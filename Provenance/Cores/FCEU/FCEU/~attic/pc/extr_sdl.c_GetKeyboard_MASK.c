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
 char* FUNC0 () ; 
 char* KeyState ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 

char *FUNC2(void)
{
 KeyState=FUNC1(0);
 #ifdef EXTGUI
 { char *tmp=GUI_GetKeyboard(); if(tmp) KeyState=tmp; }
 #endif
 return((char *)KeyState);
}