
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int string; } ;
struct TYPE_8__ {TYPE_2__ id; int memaddr; int format; int desc; int title; int lboard_count; TYPE_1__* patchdata; } ;
typedef TYPE_3__ rcheevos_readud_t ;
struct TYPE_9__ {unsigned int id; void* mem; void* format; void* description; void* title; } ;
typedef TYPE_4__ rcheevos_ralboard_t ;
struct TYPE_6__ {TYPE_4__* lboards; } ;


 int CHEEVOS_FREE (void*) ;
 void* rcheevos_dupstr (int *) ;
 scalar_t__ strtol (int ,int *,int) ;

__attribute__((used)) static int rcheevos_new_lboard(rcheevos_readud_t* ud)
{
   rcheevos_ralboard_t* lboard = ud->patchdata->lboards + ud->lboard_count++;

   lboard->title = rcheevos_dupstr(&ud->title);
   lboard->description = rcheevos_dupstr(&ud->desc);
   lboard->format = rcheevos_dupstr(&ud->format);
   lboard->mem = rcheevos_dupstr(&ud->memaddr);
   lboard->id = (unsigned)strtol(ud->id.string, ((void*)0), 10);

   if ( !lboard->title
       || !lboard->description
       || !lboard->format
       || !lboard->mem)
   {
      CHEEVOS_FREE(lboard->title);
      CHEEVOS_FREE(lboard->description);
      CHEEVOS_FREE(lboard->format);
      CHEEVOS_FREE(lboard->mem);
      return -1;
   }

   return 0;
}
