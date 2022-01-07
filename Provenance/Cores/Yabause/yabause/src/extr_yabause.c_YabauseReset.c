
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ emulatebios; scalar_t__ usequickload; scalar_t__ playing_ssf; } ;


 int YAB_ERR_CANNOTINIT ;
 int YabSetError (int ,int ) ;
 scalar_t__ YabauseQuickLoadGame () ;
 int YabauseResetNoLoad () ;
 int _ (char*) ;
 TYPE_1__ yabsys ;

void YabauseReset(void) {

   if (yabsys.playing_ssf)
      yabsys.playing_ssf = 0;

   YabauseResetNoLoad();

   if (yabsys.usequickload || yabsys.emulatebios)
   {
      if (YabauseQuickLoadGame() != 0)
      {
         if (yabsys.emulatebios)
            YabSetError(YAB_ERR_CANNOTINIT, _("Game"));
         else
            YabauseResetNoLoad();
      }
   }
}
