#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ key; } ;
struct TYPE_4__ {TYPE_2__* slot; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_1__ scsp ; 

__attribute__((used)) static void FUNC2(void)
{
   int slotnum;
   for (slotnum = 0; slotnum < 32; slotnum++)
   {
      if (scsp.slot[slotnum].key)
         FUNC1(&scsp.slot[slotnum]);
      else
         FUNC0(&scsp.slot[slotnum]);
   }
}