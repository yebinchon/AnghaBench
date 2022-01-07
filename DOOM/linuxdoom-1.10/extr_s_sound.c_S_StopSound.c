
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* origin; scalar_t__ sfxinfo; } ;


 int S_StopChannel (int) ;
 TYPE_1__* channels ;
 int numChannels ;

void S_StopSound(void *origin)
{

    int cnum;

    for (cnum=0 ; cnum<numChannels ; cnum++)
    {
 if (channels[cnum].sfxinfo && channels[cnum].origin == origin)
 {
     S_StopChannel(cnum);
     break;
 }
    }
}
