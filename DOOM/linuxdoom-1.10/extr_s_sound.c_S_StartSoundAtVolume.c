
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int pitch; int priority; scalar_t__ lumpnum; int usefulness; int data; scalar_t__ volume; scalar_t__ link; } ;
typedef TYPE_1__ sfxinfo_t ;
struct TYPE_13__ {scalar_t__ x; scalar_t__ y; } ;
typedef TYPE_2__ mobj_t ;
struct TYPE_15__ {int handle; } ;
struct TYPE_14__ {TYPE_2__* mo; } ;


 int I_Error (char*,int) ;
 scalar_t__ I_GetSfxLumpNum (TYPE_1__*) ;
 int I_StartSound (int,int,int,int,int) ;
 int M_Random () ;
 int NORM_PITCH ;
 int NORM_PRIORITY ;
 int NORM_SEP ;
 int NUMSFX ;
 int S_AdjustSoundParams (TYPE_2__*,TYPE_2__*,int*,int*,int*) ;
 int S_StopSound (TYPE_2__*) ;
 int S_getChannel (TYPE_2__*,TYPE_1__*) ;
 TYPE_1__* S_sfx ;
 TYPE_4__* channels ;
 size_t consoleplayer ;
 int fprintf (int ,char*) ;
 TYPE_3__* players ;
 int sfx_itemup ;
 int sfx_sawhit ;
 int sfx_sawup ;
 int sfx_tink ;
 int snd_SfxVolume ;
 int stderr ;

void
S_StartSoundAtVolume
( void* origin_p,
  int sfx_id,
  int volume )
{

  int rc;
  int sep;
  int pitch;
  int priority;
  sfxinfo_t* sfx;
  int cnum;

  mobj_t* origin = (mobj_t *) origin_p;
  if (sfx_id < 1 || sfx_id > NUMSFX)
    I_Error("Bad sfx #: %d", sfx_id);

  sfx = &S_sfx[sfx_id];


  if (sfx->link)
  {
    pitch = sfx->pitch;
    priority = sfx->priority;
    volume += sfx->volume;

    if (volume < 1)
      return;

    if (volume > snd_SfxVolume)
      volume = snd_SfxVolume;
  }
  else
  {
    pitch = NORM_PITCH;
    priority = NORM_PRIORITY;
  }




  if (origin && origin != players[consoleplayer].mo)
  {
    rc = S_AdjustSoundParams(players[consoleplayer].mo,
        origin,
        &volume,
        &sep,
        &pitch);

    if ( origin->x == players[consoleplayer].mo->x
  && origin->y == players[consoleplayer].mo->y)
    {
      sep = NORM_SEP;
    }

    if (!rc)
      return;
  }
  else
  {
    sep = NORM_SEP;
  }


  if (sfx_id >= sfx_sawup
      && sfx_id <= sfx_sawhit)
  {
    pitch += 8 - (M_Random()&15);

    if (pitch<0)
      pitch = 0;
    else if (pitch>255)
      pitch = 255;
  }
  else if (sfx_id != sfx_itemup
    && sfx_id != sfx_tink)
  {
    pitch += 16 - (M_Random()&31);

    if (pitch<0)
      pitch = 0;
    else if (pitch>255)
      pitch = 255;
  }


  S_StopSound(origin);


  cnum = S_getChannel(origin, sfx);

  if (cnum<0)
    return;
  if (sfx->lumpnum < 0)
    sfx->lumpnum = I_GetSfxLumpNum(sfx);



  if (!sfx->data)
  {
    fprintf( stderr,
      "S_StartSoundAtVolume: 16bit and not pre-cached - wtf?\n");







  }



  if (sfx->usefulness++ < 0)
    sfx->usefulness = 1;



  channels[cnum].handle = I_StartSound(sfx_id,

           volume,
           sep,
           pitch,
           priority);
}
