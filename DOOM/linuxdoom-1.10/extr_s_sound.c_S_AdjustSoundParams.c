
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t angle; scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_1__ mobj_t ;
typedef int fixed_t ;
typedef size_t angle_t ;


 size_t ANGLETOFINESHIFT ;
 int FRACBITS ;
 int FixedMul (int ,int ) ;
 size_t R_PointToAngle2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int S_ATTENUATOR ;
 int S_CLIPPING_DIST ;
 int S_CLOSE_DIST ;
 int S_STEREO_SWING ;
 int abs (scalar_t__) ;
 int * finesine ;
 int gamemap ;
 int snd_SfxVolume ;

int
S_AdjustSoundParams
( mobj_t* listener,
  mobj_t* source,
  int* vol,
  int* sep,
  int* pitch )
{
    fixed_t approx_dist;
    fixed_t adx;
    fixed_t ady;
    angle_t angle;



    adx = abs(listener->x - source->x);
    ady = abs(listener->y - source->y);


    approx_dist = adx + ady - ((adx < ady ? adx : ady)>>1);

    if (gamemap != 8
 && approx_dist > S_CLIPPING_DIST)
    {
 return 0;
    }


    angle = R_PointToAngle2(listener->x,
       listener->y,
       source->x,
       source->y);

    if (angle > listener->angle)
 angle = angle - listener->angle;
    else
 angle = angle + (0xffffffff - listener->angle);

    angle >>= ANGLETOFINESHIFT;


    *sep = 128 - (FixedMul(S_STEREO_SWING,finesine[angle])>>FRACBITS);


    if (approx_dist < S_CLOSE_DIST)
    {
 *vol = snd_SfxVolume;
    }
    else if (gamemap == 8)
    {
 if (approx_dist > S_CLIPPING_DIST)
     approx_dist = S_CLIPPING_DIST;

 *vol = 15+ ((snd_SfxVolume-15)
      *((S_CLIPPING_DIST - approx_dist)>>FRACBITS))
     / S_ATTENUATOR;
    }
    else
    {

 *vol = (snd_SfxVolume
  * ((S_CLIPPING_DIST - approx_dist)>>FRACBITS))
     / S_ATTENUATOR;
    }

    return (*vol > 0);
}
