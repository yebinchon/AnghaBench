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
typedef  int /*<<< orphan*/  OptionsContext ;

/* Variables and functions */
 int /*<<< orphan*/  options ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(void *optctx, const char *opt, const char *arg)
{
    OptionsContext *o = optctx;
    return FUNC0(o, "codec:a", arg, options);
}