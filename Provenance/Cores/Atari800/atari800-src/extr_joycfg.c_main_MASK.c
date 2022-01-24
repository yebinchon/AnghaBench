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
 scalar_t__ BACKGROUND ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ TITLE ; 
 int /*<<< orphan*/  _NOCURSOR ; 
 int /*<<< orphan*/  _NORMALCURSOR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int,int) ; 

int FUNC9()
{
  int ok;

  FUNC5();
  FUNC1(25);
  FUNC2(_NOCURSOR);

  FUNC0("Joystick configuration utility for Atari 800 emulator",BACKGROUND+TITLE);
  ok=FUNC4();

  FUNC8(1,1,80,25);
  FUNC7(0xf);
  FUNC3();
  FUNC2(_NORMALCURSOR);

  if (ok) FUNC6();

  return 0;
}