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

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,char const*) ; 

__attribute__((used)) static int FUNC2(void *optctx, const char *opt, const char *arg)
{
    FUNC0(NULL, AV_LOG_WARNING, "Option -pix_fmt is deprecated, use -pixel_format.\n");
    return FUNC1(NULL, "pixel_format", arg);
}