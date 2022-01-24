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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_INFO ; 
 float UINT32_MAX ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC1(void *ctx, const char *str, uint32_t peak)
{
    FUNC0(ctx, AV_LOG_INFO, "%s - ", str);
    if (!peak)
        FUNC0(ctx, AV_LOG_INFO, "unknown");
    else
        FUNC0(ctx, AV_LOG_INFO, "%f", (float) peak / UINT32_MAX);
    FUNC0(ctx, AV_LOG_INFO, ", ");
}