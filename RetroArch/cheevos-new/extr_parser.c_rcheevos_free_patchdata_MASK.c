#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {unsigned int core_count; unsigned int unofficial_count; unsigned int lboard_count; TYPE_2__* lboards; TYPE_2__* unofficial; TYPE_2__* core; scalar_t__ console_id; } ;
typedef  TYPE_1__ rcheevos_rapatchdata_t ;
struct TYPE_7__ {struct TYPE_7__* mem; struct TYPE_7__* format; struct TYPE_7__* description; struct TYPE_7__* title; struct TYPE_7__* memaddr; struct TYPE_7__* badge; } ;
typedef  TYPE_2__ rcheevos_ralboard_t ;
typedef  TYPE_2__ rcheevos_racheevo_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 

void FUNC1(rcheevos_rapatchdata_t* patchdata)
{
   unsigned i = 0, count = 0;
   const rcheevos_racheevo_t* cheevo = NULL;
   const rcheevos_ralboard_t* lboard = NULL;

   cheevo = patchdata->core;

   for (i = 0, count = patchdata->core_count; i < count; i++, cheevo++)
   {
      FUNC0(cheevo->title);
      FUNC0(cheevo->description);
      FUNC0(cheevo->badge);
      FUNC0(cheevo->memaddr);
   }

   cheevo = patchdata->unofficial;

   for (i = 0, count = patchdata->unofficial_count; i < count; i++, cheevo++)
   {
      FUNC0(cheevo->title);
      FUNC0(cheevo->description);
      FUNC0(cheevo->badge);
      FUNC0(cheevo->memaddr);
   }

   lboard = patchdata->lboards;

   for (i = 0, count = patchdata->lboard_count; i < count; i++, lboard++)
   {
      FUNC0(lboard->title);
      FUNC0(lboard->description);
      FUNC0(lboard->format);
      FUNC0(lboard->mem);
   }

   FUNC0(patchdata->core);
   FUNC0(patchdata->unofficial);
   FUNC0(patchdata->lboards);

   patchdata->console_id       = 0;
   patchdata->core             = NULL;
   patchdata->unofficial       = NULL;
   patchdata->lboards          = NULL;
   patchdata->core_count       = 0;
   patchdata->unofficial_count = 0;
   patchdata->lboard_count     = 0;
}