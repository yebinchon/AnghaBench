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
struct TYPE_7__ {int /*<<< orphan*/  protocol_blacklist; int /*<<< orphan*/  protocol_whitelist; int /*<<< orphan*/  interrupt_callback; TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_8__ {scalar_t__ end; scalar_t__ start; scalar_t__ pos; int /*<<< orphan*/  h; } ;
typedef  TYPE_2__ SubfileContext ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ INT64_MAX ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(URLContext *h, const char *filename, int flags,
                        AVDictionary **options)
{
    SubfileContext *c = h->priv_data;
    int ret;

    if (!c->end)
        c->end = INT64_MAX;

    if (c->end <= c->start) {
        FUNC1(h, AV_LOG_ERROR, "end before start\n");
        return FUNC0(EINVAL);
    }
    FUNC2(filename, "subfile:", &filename);
    ret = FUNC4(&c->h, filename, flags, &h->interrupt_callback,
                               options, h->protocol_whitelist, h->protocol_blacklist, h);
    if (ret < 0)
        return ret;
    c->pos = c->start;
    if ((ret = FUNC5(h)) < 0) {
        FUNC3(c->h);
        return ret;
    }
    return 0;
}