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
typedef  scalar_t__ uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int* joyBMap ; 
 int joybuttons ; 
 int /*<<< orphan*/  soundo ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(int b)
{
  int c=0;
  uint32 st=FUNC1(0);

  while(FUNC1(0)< (st+4) )
  {
   if(!soundo)
    FUNC0();
   if(joybuttons) c=joybuttons;
   else if(c && !joybuttons)
   {
    joyBMap[b]=c;
    break;
   }

  }
}