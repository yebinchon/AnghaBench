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
struct dinput_input {int /*<<< orphan*/  mouse; } ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int DISCL_EXCLUSIVE ; 
 int DISCL_FOREGROUND ; 
 int DISCL_NONEXCLUSIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 

__attribute__((used)) static void FUNC4(void *data, bool state)
{
   struct dinput_input *di = (struct dinput_input*)data;

   FUNC2(di->mouse);
   FUNC1(di->mouse,
      (HWND)FUNC3(),
      state ?
      (DISCL_EXCLUSIVE | DISCL_FOREGROUND) :
      (DISCL_NONEXCLUSIVE | DISCL_FOREGROUND));
   FUNC0(di->mouse);
}