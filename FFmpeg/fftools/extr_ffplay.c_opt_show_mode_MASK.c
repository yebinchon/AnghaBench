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
 int /*<<< orphan*/  OPT_INT ; 
 scalar_t__ SHOW_MODE_NB ; 
 int /*<<< orphan*/  SHOW_MODE_RDFT ; 
 int /*<<< orphan*/  SHOW_MODE_VIDEO ; 
 int /*<<< orphan*/  SHOW_MODE_WAVES ; 
 int /*<<< orphan*/  FUNC0 (char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  show_mode ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 

__attribute__((used)) static int FUNC2(void *optctx, const char *opt, const char *arg)
{
    show_mode = !FUNC1(arg, "video") ? SHOW_MODE_VIDEO :
                !FUNC1(arg, "waves") ? SHOW_MODE_WAVES :
                !FUNC1(arg, "rdft" ) ? SHOW_MODE_RDFT  :
                FUNC0(opt, arg, OPT_INT, 0, SHOW_MODE_NB-1);
    return 0;
}