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
struct thd_s {int /*<<< orphan*/  cond; } ;

/* Variables and functions */
 int /*<<< orphan*/  INFINITE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hnd_key ; 

void FUNC2(void) 
{
   struct thd_s *thd = (struct thd_s *)FUNC0(hnd_key);
   FUNC1(thd->cond,INFINITE);
}