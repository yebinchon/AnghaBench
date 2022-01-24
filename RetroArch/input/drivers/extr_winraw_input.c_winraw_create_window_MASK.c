#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WNDPROC ;
struct TYPE_3__ {char* lpszClassName; int /*<<< orphan*/  lpfnWndProc; int /*<<< orphan*/  hInstance; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ WNDCLASSA ;
typedef  int /*<<< orphan*/ * HWND ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_CLASS_ALREADY_EXISTS ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  HWND_MESSAGE ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HWND FUNC6(WNDPROC wnd_proc)
{
   HWND wnd;
   WNDCLASSA wc = {0};

   wc.hInstance = FUNC2(NULL);

   if (!wc.hInstance)
   {
      FUNC3("[WINRAW]: GetModuleHandleA failed with error %lu.\n", FUNC1());
      return NULL;
   }

   wc.lpfnWndProc   = wnd_proc;
   wc.lpszClassName = "winraw-input";
   if (!FUNC4(&wc) && FUNC1() != ERROR_CLASS_ALREADY_EXISTS)
   {
      FUNC3("[WINRAW]: RegisterClassA failed with error %lu.\n", FUNC1());
      return NULL;
   }

   wnd = FUNC0(0, wc.lpszClassName, NULL, 0, 0, 0, 0, 0,
         HWND_MESSAGE, NULL, NULL, NULL);
   if (!wnd)
   {
      FUNC3("[WINRAW]: CreateWindowExA failed with error %lu.\n", FUNC1());
      goto error;
   }

   return wnd;

error:
   FUNC5(wc.lpszClassName, NULL);
   return NULL;
}