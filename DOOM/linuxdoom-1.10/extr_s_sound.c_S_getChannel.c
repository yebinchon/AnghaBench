
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ priority; } ;
typedef TYPE_1__ sfxinfo_t ;
struct TYPE_6__ {void* origin; TYPE_1__* sfxinfo; } ;
typedef TYPE_2__ channel_t ;


 int S_StopChannel (int) ;
 TYPE_2__* channels ;
 int numChannels ;

int
S_getChannel
( void* origin,
  sfxinfo_t* sfxinfo )
{

    int cnum;

    channel_t* c;


    for (cnum=0 ; cnum<numChannels ; cnum++)
    {
 if (!channels[cnum].sfxinfo)
     break;
 else if (origin && channels[cnum].origin == origin)
 {
     S_StopChannel(cnum);
     break;
 }
    }


    if (cnum == numChannels)
    {

 for (cnum=0 ; cnum<numChannels ; cnum++)
     if (channels[cnum].sfxinfo->priority >= sfxinfo->priority) break;

 if (cnum == numChannels)
 {

     return -1;
 }
 else
 {

     S_StopChannel(cnum);
 }
    }

    c = &channels[cnum];


    c->sfxinfo = sfxinfo;
    c->origin = origin;

    return cnum;
}
