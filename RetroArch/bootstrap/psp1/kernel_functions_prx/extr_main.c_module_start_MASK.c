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
typedef  int /*<<< orphan*/  SceSize ;

/* Variables and functions */
 scalar_t__ buttons ; 
 scalar_t__ main_thread ; 
 int /*<<< orphan*/  main_thread_id ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ thread_active ; 

int FUNC2(SceSize args, void *argp)
{
   (void)args;
   (void)argp;

   buttons = 0;
   thread_active = 0;
   main_thread_id = FUNC0("main Thread", main_thread, 0x11, 0x200, 0, NULL);

   if (main_thread >= 0)
      FUNC1(main_thread_id, 0, 0);

   return 0;
}