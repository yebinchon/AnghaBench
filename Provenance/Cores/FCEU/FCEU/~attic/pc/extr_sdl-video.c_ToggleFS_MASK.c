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
typedef  int /*<<< orphan*/  FCEUGI ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int _fullscreen ; 

void FUNC2(void)
{
 extern FCEUGI *CurGame;
 FUNC1();
 _fullscreen=!_fullscreen;

 if(!FUNC0(CurGame))
 {
  _fullscreen=!_fullscreen;
  FUNC0(CurGame);
 }
}