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
typedef  int uint8 ;
typedef  void* uint32 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int joybuttons ; 
 void* joyx ; 
 void* joyy ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

void FUNC2(void)
{
 uint32 xc,yc;


 joybuttons=((FUNC0(0x201)&0xF0)^0xF0)>>4;

 xc=yc=0;

 {
  FUNC1(0x201,0);

  for(;;)
  {
   uint8 b;

   b=FUNC0(0x201);
   if(!(b&3))
    break;
   if(b&1) xc++;
   if(b&2) yc++;
  }
 }

 joyx=xc;
 joyy=yc;
}