
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ cheevos_hardcore_mode_enable; } ;
struct TYPE_10__ {TYPE_1__ bools; } ;
typedef TYPE_3__ settings_t ;
struct TYPE_11__ {int active; int last; int trigger; } ;
typedef TYPE_4__ rcheevos_cheevo_t ;
struct TYPE_9__ {int core_count; int unofficial_count; } ;
struct TYPE_12__ {TYPE_2__ patchdata; TYPE_4__* unofficial; TYPE_4__* core; } ;


 int RCHEEVOS_ACTIVE_HARDCORE ;
 int RCHEEVOS_ACTIVE_SOFTCORE ;
 TYPE_3__* config_get_ptr () ;
 int rc_reset_trigger (int ) ;
 int rc_test_trigger (int ,int ,int *,int *) ;
 int rcheevos_award (TYPE_4__*,int) ;
 int rcheevos_hardcore_paused ;
 TYPE_5__ rcheevos_locals ;
 int rcheevos_peek ;

__attribute__((used)) static void rcheevos_test_cheevo_set(bool official)
{
   settings_t *settings = config_get_ptr();
   int mode = RCHEEVOS_ACTIVE_SOFTCORE;
   rcheevos_cheevo_t* cheevo;
   int i, count;

   if (settings && settings->bools.cheevos_hardcore_mode_enable && !rcheevos_hardcore_paused)
      mode = RCHEEVOS_ACTIVE_HARDCORE;

   if (official)
   {
      cheevo = rcheevos_locals.core;
      count = rcheevos_locals.patchdata.core_count;
   }
   else
   {
      cheevo = rcheevos_locals.unofficial;
      count = rcheevos_locals.patchdata.unofficial_count;
   }

   for (i = 0; i < count; i++, cheevo++)
   {

      if ((cheevo->active & mode) == 0)
         continue;

      if (cheevo->active & mode)
      {
         int valid = rc_test_trigger(cheevo->trigger, rcheevos_peek, ((void*)0), ((void*)0));

         if (cheevo->last)
            rc_reset_trigger(cheevo->trigger);
         else if (valid)
            rcheevos_award(cheevo, mode);

         cheevo->last = valid;
      }
   }
}
