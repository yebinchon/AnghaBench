
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ data; } ;


 int I_Error (char*) ;
 int NUM_CHANNELS ;
 TYPE_1__* S_sfx ;
 int* channelhandles ;
 int* channelids ;
 int ** channelleftvol_lookup ;
 int ** channelrightvol_lookup ;
 unsigned char** channels ;
 unsigned char** channelsend ;
 int* channelstart ;
 int* channelstep ;
 scalar_t__* channelstepremainder ;
 int gametic ;
 int* lengths ;
 int sfx_pistol ;
 int sfx_sawful ;
 int sfx_sawhit ;
 int sfx_sawidl ;
 int sfx_sawup ;
 int sfx_stnmov ;
 int * vol_lookup ;

int
addsfx
( int sfxid,
  int volume,
  int step,
  int seperation )
{
    static unsigned short handlenums = 0;

    int i;
    int rc = -1;

    int oldest = gametic;
    int oldestnum = 0;
    int slot;

    int rightvol;
    int leftvol;



    if ( sfxid == sfx_sawup
  || sfxid == sfx_sawidl
  || sfxid == sfx_sawful
  || sfxid == sfx_sawhit
  || sfxid == sfx_stnmov
  || sfxid == sfx_pistol )
    {

 for (i=0 ; i<NUM_CHANNELS ; i++)
 {

     if ( (channels[i])
   && (channelids[i] == sfxid) )
     {

  channels[i] = 0;


  break;
     }
 }
    }


    for (i=0; (i<NUM_CHANNELS) && (channels[i]); i++)
    {
 if (channelstart[i] < oldest)
 {
     oldestnum = i;
     oldest = channelstart[i];
 }
    }





    if (i == NUM_CHANNELS)
 slot = oldestnum;
    else
 slot = i;




    channels[slot] = (unsigned char *) S_sfx[sfxid].data;

    channelsend[slot] = channels[slot] + lengths[sfxid];


    if (!handlenums)
 handlenums = 100;



    channelhandles[slot] = rc = handlenums++;



    channelstep[slot] = step;

    channelstepremainder[slot] = 0;

    channelstart[slot] = gametic;



    seperation += 1;




    leftvol =
 volume - ((volume*seperation*seperation) >> 16);
    seperation = seperation - 257;
    rightvol =
 volume - ((volume*seperation*seperation) >> 16);


    if (rightvol < 0 || rightvol > 127)
 I_Error("rightvol out of bounds");

    if (leftvol < 0 || leftvol > 127)
 I_Error("leftvol out of bounds");



    channelleftvol_lookup[slot] = &vol_lookup[leftvol*256];
    channelrightvol_lookup[slot] = &vol_lookup[rightvol*256];



    channelids[slot] = sfxid;


    return rc;
}
