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
 int FUNC1 (void*,char*,char const*) ; 

__attribute__((used)) static int FUNC2(void *optctx, const char *opt, const char *arg)
{
    FUNC0(NULL, AV_LOG_WARNING, "This option is deprecated, use -standard.\n");
    return FUNC1(optctx, "standard", arg);
}