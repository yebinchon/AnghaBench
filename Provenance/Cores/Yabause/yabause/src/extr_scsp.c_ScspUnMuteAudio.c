
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* UnMuteAudio ) () ;} ;


 TYPE_1__* SNDCore ;
 int scsp_mute_flags ;
 int stub1 () ;

void
ScspUnMuteAudio (int flags)
{
  scsp_mute_flags &= ~flags;
  if (SNDCore && (scsp_mute_flags == 0))
    SNDCore->UnMuteAudio ();
}
