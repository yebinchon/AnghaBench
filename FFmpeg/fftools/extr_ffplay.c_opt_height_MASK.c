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
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  OPT_INT64 ; 
 int /*<<< orphan*/  FUNC0 (char const*,char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  screen_height ; 

__attribute__((used)) static int FUNC1(void *optctx, const char *opt, const char *arg)
{
    screen_height = FUNC0(opt, arg, OPT_INT64, 1, INT_MAX);
    return 0;
}