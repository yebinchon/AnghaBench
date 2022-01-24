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
typedef  int /*<<< orphan*/  VCOS_STATUS_T ;

/* Variables and functions */
 int /*<<< orphan*/  VCOS_SUCCESS ; 
 int /*<<< orphan*/  init_refcount ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

VCOS_STATUS_T FUNC3(void)
{
   VCOS_STATUS_T st = VCOS_SUCCESS;

   FUNC0();

   if (init_refcount++ == 0)
      st = FUNC2();

   FUNC1();

   return st;
}