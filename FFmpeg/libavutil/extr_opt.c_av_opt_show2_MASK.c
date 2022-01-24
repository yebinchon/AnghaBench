#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  class_name; } ;
typedef  TYPE_1__ AVClass ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int /*<<< orphan*/ *,int,int,int) ; 

int FUNC2(void *obj, void *av_log_obj, int req_flags, int rej_flags)
{
    if (!obj)
        return -1;

    FUNC0(av_log_obj, AV_LOG_INFO, "%s AVOptions:\n", (*(AVClass **)obj)->class_name);

    FUNC1(obj, av_log_obj, NULL, req_flags, rej_flags, -1);

    return 0;
}