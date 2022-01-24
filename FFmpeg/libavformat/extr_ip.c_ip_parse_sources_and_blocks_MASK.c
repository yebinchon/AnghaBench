#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ nb_exclude_addrs; scalar_t__ nb_include_addrs; int /*<<< orphan*/  exclude_addrs; int /*<<< orphan*/  include_addrs; } ;
typedef  TYPE_1__ IPSourceFilters ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (void*,char const*,int /*<<< orphan*/ *,scalar_t__*) ; 

__attribute__((used)) static int FUNC3(void *log_ctx, const char *buf, IPSourceFilters *filters, int parse_include_list)
{
    int ret;
    if (parse_include_list)
        ret = FUNC2(log_ctx, buf, &filters->include_addrs, &filters->nb_include_addrs);
    else
        ret = FUNC2(log_ctx, buf, &filters->exclude_addrs, &filters->nb_exclude_addrs);

    if (ret >= 0 && filters->nb_include_addrs && filters->nb_exclude_addrs) {
        FUNC1(log_ctx, AV_LOG_ERROR, "Simultaneously including and excluding sources is not supported.\n");
        return FUNC0(EINVAL);
    }
    return ret;
}