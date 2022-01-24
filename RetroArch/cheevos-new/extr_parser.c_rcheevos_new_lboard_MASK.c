#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  string; } ;
struct TYPE_8__ {TYPE_2__ id; int /*<<< orphan*/  memaddr; int /*<<< orphan*/  format; int /*<<< orphan*/  desc; int /*<<< orphan*/  title; int /*<<< orphan*/  lboard_count; TYPE_1__* patchdata; } ;
typedef  TYPE_3__ rcheevos_readud_t ;
struct TYPE_9__ {unsigned int id; void* mem; void* format; void* description; void* title; } ;
typedef  TYPE_4__ rcheevos_ralboard_t ;
struct TYPE_6__ {TYPE_4__* lboards; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(rcheevos_readud_t* ud)
{
   rcheevos_ralboard_t* lboard = ud->patchdata->lboards + ud->lboard_count++;

   lboard->title              = FUNC1(&ud->title);
   lboard->description        = FUNC1(&ud->desc);
   lboard->format             = FUNC1(&ud->format);
   lboard->mem                = FUNC1(&ud->memaddr);
   lboard->id                 = (unsigned)FUNC2(ud->id.string, NULL, 10);

   if (   !lboard->title
       || !lboard->description
       || !lboard->format
       || !lboard->mem)
   {
      FUNC0(lboard->title);
      FUNC0(lboard->description);
      FUNC0(lboard->format);
      FUNC0(lboard->mem);
      return -1;
   }

   return 0;
}