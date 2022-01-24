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
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(HWND wnd)
{
   BOOL r;

   if (!wnd)
      return;

   r = FUNC0(wnd);

   if (!r)
   {
      FUNC2("[WINRAW]: DestroyWindow failed with error %lu.\n", FUNC1());
   }

   r = FUNC3("winraw-input", NULL);

   if (!r)
   {
      FUNC2("[WINRAW]: UnregisterClassA failed with error %lu.\n", FUNC1());
   }
}