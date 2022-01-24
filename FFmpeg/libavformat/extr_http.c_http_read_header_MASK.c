#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  line ;
struct TYPE_7__ {int is_streamed; TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_8__ {int seekable; int filesize; int /*<<< orphan*/  cookie_dict; int /*<<< orphan*/  cookies; scalar_t__ is_mediagateway; int /*<<< orphan*/  line_count; int /*<<< orphan*/  chunksize; } ;
typedef  TYPE_2__ HTTPContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_TRACE ; 
 int MAX_URL_SIZE ; 
 int /*<<< orphan*/  UINT64_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_2__*,char*,int) ; 
 int FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC5(URLContext *h, int *new_location)
{
    HTTPContext *s = h->priv_data;
    char line[MAX_URL_SIZE];
    int err = 0;

    s->chunksize = UINT64_MAX;

    for (;;) {
        if ((err = FUNC3(s, line, sizeof(line))) < 0)
            return err;

        FUNC1(h, AV_LOG_TRACE, "header='%s'\n", line);

        err = FUNC4(h, line, s->line_count, new_location);
        if (err < 0)
            return err;
        if (err == 0)
            break;
        s->line_count++;
    }

    if (s->seekable == -1 && s->is_mediagateway && s->filesize == 2000000000)
        h->is_streamed = 1; /* we can in fact _not_ seek */

    // add any new cookies into the existing cookie string
    FUNC2(s->cookie_dict, &s->cookies);
    FUNC0(&s->cookie_dict);

    return err;
}