
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* SetVolume ) (int) ;} ;


 TYPE_1__* SNDCore ;
 int scsp_volume ;
 int stub1 (int) ;

void ScspSetVolume(int volume)
{
   scsp_volume = volume;
   if (SNDCore)
      SNDCore->SetVolume(volume);
}
