
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int volume; } ;


 int ASND_ChangeVolumeVoice (int ,int,int) ;
 TYPE_1__ private_ogg ;

void SetVolumeOgg(int volume)
{
  private_ogg.volume = volume;
  ASND_ChangeVolumeVoice(0, volume, volume);
}
