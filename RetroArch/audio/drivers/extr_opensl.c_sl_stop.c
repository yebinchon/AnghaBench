
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_paused; int player; } ;
typedef TYPE_1__ sl_t ;


 scalar_t__ SLPlayItf_SetPlayState (int ,int ) ;
 int SL_PLAYSTATE_STOPPED ;
 scalar_t__ SL_RESULT_SUCCESS ;

__attribute__((used)) static bool sl_stop(void *data)
{
   sl_t *sl = (sl_t*)data;
   sl->is_paused = (SLPlayItf_SetPlayState(sl->player, SL_PLAYSTATE_STOPPED)
         == SL_RESULT_SUCCESS) ? 1 : 0;

   return sl->is_paused ? 1 : 0;
}
