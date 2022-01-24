#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int nb_streams; TYPE_1__** streams; } ;
struct TYPE_11__ {int nb_stream_indexes; size_t* stream_index; } ;
struct TYPE_10__ {int index; } ;
typedef  TYPE_1__ AVStream ;
typedef  TYPE_2__ AVProgram ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC2 (TYPE_3__*,TYPE_1__*,char const*,char const**,TYPE_2__**) ; 
 int FUNC3 (char const*,char**,int /*<<< orphan*/ ) ; 

int FUNC4(AVFormatContext *s, AVStream *st,
                                    const char *spec)
{
    int ret, index;
    char *endptr;
    const char *indexptr = NULL;
    AVProgram *p = NULL;
    int nb_streams;

    ret = FUNC2(s, st, spec, &indexptr, &p);
    if (ret < 0)
        goto error;

    if (!indexptr)
        return ret;

    index = FUNC3(indexptr, &endptr, 0);
    if (*endptr) {                  /* We can't have anything after the requested index. */
        ret = FUNC0(EINVAL);
        goto error;
    }

    /* This is not really needed but saves us a loop for simple stream index specifiers. */
    if (spec == indexptr)
        return (index == st->index);

    /* If we requested a matching stream index, we have to ensure st is that. */
    nb_streams = p ? p->nb_stream_indexes : s->nb_streams;
    for (int i = 0; i < nb_streams && index >= 0; i++) {
        AVStream *candidate = p ? s->streams[p->stream_index[i]] : s->streams[i];
        ret = FUNC2(s, candidate, spec, NULL, NULL);
        if (ret < 0)
            goto error;
        if (ret > 0 && index-- == 0 && st == candidate)
            return 1;
    }
    return 0;

error:
    if (ret == FUNC0(EINVAL))
        FUNC1(s, AV_LOG_ERROR, "Invalid stream specifier: %s.\n", spec);
    return ret;
}