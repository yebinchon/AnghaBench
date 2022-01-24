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
 int /*<<< orphan*/  exit_callback ; 
 int FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

int FUNC3(SceSize args, void *argp)
{
   int cbid = FUNC0("Exit Callback", exit_callback, NULL);
   FUNC1(cbid);

   FUNC2();

   return 0;
}