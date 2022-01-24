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
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  int32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int) ; 
 int FUNC2 () ; 
 scalar_t__ NoWaiting ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int frameskip ; 

void FUNC4(void)
{
         uint8 *gfx;  
         int32 *sound;
         int32 ssize;
         static int fskipc=0;
         static int opause=0;
         
         #ifdef FRAMESKIP
         fskipc=(fskipc+1)%(frameskip+1);
         #endif
         
         if(NoWaiting) {gfx=0;}
         FUNC1(&gfx, &sound, &ssize, fskipc);
         FUNC0(gfx, sound, ssize);

         if(opause!=FUNC2())
         {
          opause=FUNC2();
		  FUNC3(opause);
         }
}