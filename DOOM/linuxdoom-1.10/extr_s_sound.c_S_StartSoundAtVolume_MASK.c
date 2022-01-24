#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int pitch; int priority; scalar_t__ lumpnum; int usefulness; int /*<<< orphan*/  data; scalar_t__ volume; scalar_t__ link; } ;
typedef  TYPE_1__ sfxinfo_t ;
struct TYPE_13__ {scalar_t__ x; scalar_t__ y; } ;
typedef  TYPE_2__ mobj_t ;
struct TYPE_15__ {int /*<<< orphan*/  handle; } ;
struct TYPE_14__ {TYPE_2__* mo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int,int) ; 
 int FUNC3 () ; 
 int NORM_PITCH ; 
 int NORM_PRIORITY ; 
 int NORM_SEP ; 
 int NUMSFX ; 
 int FUNC4 (TYPE_2__*,TYPE_2__*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*,TYPE_1__*) ; 
 TYPE_1__* S_sfx ; 
 TYPE_4__* channels ; 
 size_t consoleplayer ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 TYPE_3__* players ; 
 int sfx_itemup ; 
 int sfx_sawhit ; 
 int sfx_sawup ; 
 int sfx_tink ; 
 int snd_SfxVolume ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC8
( void*		origin_p,
  int		sfx_id,
  int		volume )
{

  int		rc;
  int		sep;
  int		pitch;
  int		priority;
  sfxinfo_t*	sfx;
  int		cnum;
  
  mobj_t*	origin = (mobj_t *) origin_p;
  
  
  // Debug.
  /*fprintf( stderr,
  	   "S_StartSoundAtVolume: playing sound %d (%s)\n",
  	   sfx_id, S_sfx[sfx_id].name );*/
  
  // check for bogus sound #
  if (sfx_id < 1 || sfx_id > NUMSFX)
    FUNC0("Bad sfx #: %d", sfx_id);
  
  sfx = &S_sfx[sfx_id];
  
  // Initialize sound parameters
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


  // Check to see if it is audible,
  //  and if not, modify the params
  if (origin && origin != players[consoleplayer].mo)
  {
    rc = FUNC4(players[consoleplayer].mo,
			     origin,
			     &volume,
			     &sep,
			     &pitch);
	
    if ( origin->x == players[consoleplayer].mo->x
	 && origin->y == players[consoleplayer].mo->y)
    {	
      sep 	= NORM_SEP;
    }
    
    if (!rc)
      return;
  }	
  else
  {
    sep = NORM_SEP;
  }
  
  // hacks to vary the sfx pitches
  if (sfx_id >= sfx_sawup
      && sfx_id <= sfx_sawhit)
  {	
    pitch += 8 - (FUNC3()&15);
    
    if (pitch<0)
      pitch = 0;
    else if (pitch>255)
      pitch = 255;
  }
  else if (sfx_id != sfx_itemup
	   && sfx_id != sfx_tink)
  {
    pitch += 16 - (FUNC3()&31);
    
    if (pitch<0)
      pitch = 0;
    else if (pitch>255)
      pitch = 255;
  }

  // kill old sound
  FUNC5(origin);

  // try to find a channel
  cnum = FUNC6(origin, sfx);
  
  if (cnum<0)
    return;

  //
  // This is supposed to handle the loading/caching.
  // For some odd reason, the caching is done nearly
  //  each time the sound is needed?
  //
  
  // get lumpnum if necessary
  if (sfx->lumpnum < 0)
    sfx->lumpnum = FUNC1(sfx);

#ifndef SNDSRV
  // cache data if necessary
  if (!sfx->data)
  {
    FUNC7( stderr,
	     "S_StartSoundAtVolume: 16bit and not pre-cached - wtf?\n");

    // DOS remains, 8bit handling
    //sfx->data = (void *) W_CacheLumpNum(sfx->lumpnum, PU_MUSIC);
    // fprintf( stderr,
    //	     "S_StartSoundAtVolume: loading %d (lump %d) : 0x%x\n",
    //       sfx_id, sfx->lumpnum, (int)sfx->data );
    
  }
#endif
  
  // increase the usefulness
  if (sfx->usefulness++ < 0)
    sfx->usefulness = 1;
  
  // Assigns the handle to one of the channels in the
  //  mix/output buffer.
  channels[cnum].handle = FUNC2(sfx_id,
				       /*sfx->data,*/
				       volume,
				       sep,
				       pitch,
				       priority);
}