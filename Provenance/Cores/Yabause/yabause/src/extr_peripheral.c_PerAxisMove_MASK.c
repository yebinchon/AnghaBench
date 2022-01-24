#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  s32 ;
struct TYPE_4__ {scalar_t__ key; int /*<<< orphan*/  controller; TYPE_1__* base; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* MoveAxis ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 TYPE_2__* perkeyconfig ; 
 unsigned int perkeyconfigsize ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(u32 key, s32 dispx, s32 dispy)
{
   unsigned int i = 0;

   while(i < perkeyconfigsize)
   {
      if (key == perkeyconfig[i].key)
      {
         if (perkeyconfig[i].base->MoveAxis)
            perkeyconfig[i].base->MoveAxis(perkeyconfig[i].controller, dispx, dispy);
      }
      i++;
   }
}