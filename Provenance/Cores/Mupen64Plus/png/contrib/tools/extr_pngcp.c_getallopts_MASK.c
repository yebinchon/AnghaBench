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
struct display {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct display*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct display*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

__attribute__((used)) static int
FUNC3(struct display *dp, const char *opt_str, int *value)
{
   return FUNC0(dp, FUNC1(dp, opt_str, FUNC2(opt_str)), value, 0);
}