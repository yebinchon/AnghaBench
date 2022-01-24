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
typedef  int uint32 ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int*) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int*,int*) ; 

void FUNC5(uint32 *d)
{
 if(FUNC0()<0)
   return;

 int x,y;
 uint32 t;

 t=FUNC4(&x,&y);
 #ifdef EXTGUI
 GUI_GetMouseState(&t,&x,&y);
 #endif

 d[2]=0;
 if(t&FUNC3(1))
  d[2]|=1;
 if(t&FUNC3(3))
  d[2]|=2;
 t=FUNC2(x,y); 
 d[0]=t&0xFFFF;
 d[1]=(t>>16)&0xFFFF;
}