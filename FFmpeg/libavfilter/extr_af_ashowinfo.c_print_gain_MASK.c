#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  float int32_t ;
typedef  int /*<<< orphan*/  AVFilterContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_INFO ; 
 float INT32_MIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC1(AVFilterContext *ctx, const char *str, int32_t gain)
{
    FUNC0(ctx, AV_LOG_INFO, "%s - ", str);
    if (gain == INT32_MIN)
        FUNC0(ctx, AV_LOG_INFO, "unknown");
    else
        FUNC0(ctx, AV_LOG_INFO, "%f", gain / 100000.0f);
    FUNC0(ctx, AV_LOG_INFO, ", ");
}