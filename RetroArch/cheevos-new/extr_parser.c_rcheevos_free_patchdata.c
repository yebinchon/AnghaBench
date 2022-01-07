
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned int core_count; unsigned int unofficial_count; unsigned int lboard_count; TYPE_2__* lboards; TYPE_2__* unofficial; TYPE_2__* core; scalar_t__ console_id; } ;
typedef TYPE_1__ rcheevos_rapatchdata_t ;
struct TYPE_7__ {struct TYPE_7__* mem; struct TYPE_7__* format; struct TYPE_7__* description; struct TYPE_7__* title; struct TYPE_7__* memaddr; struct TYPE_7__* badge; } ;
typedef TYPE_2__ rcheevos_ralboard_t ;
typedef TYPE_2__ rcheevos_racheevo_t ;


 int CHEEVOS_FREE (TYPE_2__*) ;

void rcheevos_free_patchdata(rcheevos_rapatchdata_t* patchdata)
{
   unsigned i = 0, count = 0;
   const rcheevos_racheevo_t* cheevo = ((void*)0);
   const rcheevos_ralboard_t* lboard = ((void*)0);

   cheevo = patchdata->core;

   for (i = 0, count = patchdata->core_count; i < count; i++, cheevo++)
   {
      CHEEVOS_FREE(cheevo->title);
      CHEEVOS_FREE(cheevo->description);
      CHEEVOS_FREE(cheevo->badge);
      CHEEVOS_FREE(cheevo->memaddr);
   }

   cheevo = patchdata->unofficial;

   for (i = 0, count = patchdata->unofficial_count; i < count; i++, cheevo++)
   {
      CHEEVOS_FREE(cheevo->title);
      CHEEVOS_FREE(cheevo->description);
      CHEEVOS_FREE(cheevo->badge);
      CHEEVOS_FREE(cheevo->memaddr);
   }

   lboard = patchdata->lboards;

   for (i = 0, count = patchdata->lboard_count; i < count; i++, lboard++)
   {
      CHEEVOS_FREE(lboard->title);
      CHEEVOS_FREE(lboard->description);
      CHEEVOS_FREE(lboard->format);
      CHEEVOS_FREE(lboard->mem);
   }

   CHEEVOS_FREE(patchdata->core);
   CHEEVOS_FREE(patchdata->unofficial);
   CHEEVOS_FREE(patchdata->lboards);

   patchdata->console_id = 0;
   patchdata->core = ((void*)0);
   patchdata->unofficial = ((void*)0);
   patchdata->lboards = ((void*)0);
   patchdata->core_count = 0;
   patchdata->unofficial_count = 0;
   patchdata->lboard_count = 0;
}
