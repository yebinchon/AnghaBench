
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int string; } ;
struct TYPE_10__ {int string; } ;
struct TYPE_8__ {int string; } ;
struct TYPE_12__ {TYPE_4__ id; TYPE_3__ points; int memaddr; int badge; int desc; int title; int unofficial_count; TYPE_2__* patchdata; int core_count; TYPE_1__ flags; } ;
typedef TYPE_5__ rcheevos_readud_t ;
struct TYPE_13__ {unsigned int points; unsigned int id; void* memaddr; void* badge; void* description; void* title; } ;
typedef TYPE_6__ rcheevos_racheevo_t ;
struct TYPE_9__ {TYPE_6__* unofficial; TYPE_6__* core; } ;


 int CHEEVOS_FREE (void*) ;
 void* rcheevos_dupstr (int *) ;
 scalar_t__ strtol (int ,int *,int) ;

__attribute__((used)) static int rcheevos_new_cheevo(rcheevos_readud_t* ud)
{
   rcheevos_racheevo_t* cheevo = ((void*)0);
   unsigned flags = (unsigned)strtol(ud->flags.string, ((void*)0), 10);

   if (flags == 3)
      cheevo = ud->patchdata->core + ud->core_count++;
   else if (flags == 5)
      cheevo = ud->patchdata->unofficial + ud->unofficial_count++;
   else
      return 0;

   cheevo->title = rcheevos_dupstr(&ud->title);
   cheevo->description = rcheevos_dupstr(&ud->desc);
   cheevo->badge = rcheevos_dupstr(&ud->badge);
   cheevo->memaddr = rcheevos_dupstr(&ud->memaddr);
   cheevo->points = (unsigned)strtol(ud->points.string, ((void*)0), 10);
   cheevo->id = (unsigned)strtol(ud->id.string, ((void*)0), 10);

   if ( !cheevo->title
       || !cheevo->description
       || !cheevo->badge
       || !cheevo->memaddr)
   {
      CHEEVOS_FREE(cheevo->title);
      CHEEVOS_FREE(cheevo->description);
      CHEEVOS_FREE(cheevo->badge);
      CHEEVOS_FREE(cheevo->memaddr);
      return -1;
   }

   return 0;
}
