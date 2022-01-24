#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  is_streamed; int /*<<< orphan*/  protocol_blacklist; int /*<<< orphan*/  protocol_whitelist; int /*<<< orphan*/  interrupt_callback; TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_11__ {int child_count; TYPE_5__* child; } ;
typedef  TYPE_2__ TeeContext ;
struct TYPE_13__ {int /*<<< orphan*/  is_streamed; } ;
struct TYPE_12__ {TYPE_6__* url_context; } ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVIO_FLAG_READ ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 char* FUNC3 (char const**,int /*<<< orphan*/ ) ; 
 void* FUNC4 (TYPE_5__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  child_delim ; 
 int FUNC6 (TYPE_1__*,char*,int /*<<< orphan*/ **,char**) ; 
 int FUNC7 (TYPE_6__**,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC11(URLContext *h, const char *filename, int flags)
{
    TeeContext *c = h->priv_data;
    int ret, i;

    FUNC5(filename, "tee:", &filename);

    if (flags & AVIO_FLAG_READ)
        return FUNC0(ENOSYS);

    while (*filename) {
        char *child_string = FUNC3(&filename, child_delim);
        char *child_name = NULL;
        void *tmp;
        AVDictionary *options = NULL;
        if (!child_string) {
            ret = FUNC0(ENOMEM);
            goto fail;
        }

        tmp = FUNC4(c->child, c->child_count + 1, sizeof(*c->child));
        if (!tmp) {
            ret = FUNC0(ENOMEM);
            goto loop_fail;
        }
        c->child = tmp;
        FUNC8(&c->child[c->child_count], 0, sizeof(c->child[c->child_count]));

        ret = FUNC6(h, child_string, &options, &child_name);
        if (ret < 0)
            goto loop_fail;

        ret = FUNC7(&c->child[c->child_count].url_context, child_name, flags,
                                   &h->interrupt_callback, &options,
                                   h->protocol_whitelist, h->protocol_blacklist,
                                   h);
loop_fail:
        FUNC2(&child_string);
        FUNC1(&options);
        if (ret < 0)
            goto fail;
        c->child_count++;

        if (FUNC9(filename, child_delim))
            filename++;
    }

    h->is_streamed = 0;
    for (i=0; i<c->child_count; i++) {
        h->is_streamed |= c->child[i].url_context->is_streamed;
    }

    return 0;
fail:
    FUNC10(h);
    return ret;
}