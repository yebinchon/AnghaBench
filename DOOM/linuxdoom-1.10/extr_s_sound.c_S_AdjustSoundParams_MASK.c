#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t angle; scalar_t__ y; scalar_t__ x; } ;
typedef  TYPE_1__ mobj_t ;
typedef  int fixed_t ;
typedef  size_t angle_t ;

/* Variables and functions */
 size_t ANGLETOFINESHIFT ; 
 int FRACBITS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int S_ATTENUATOR ; 
 int S_CLIPPING_DIST ; 
 int S_CLOSE_DIST ; 
 int /*<<< orphan*/  S_STEREO_SWING ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/ * finesine ; 
 int gamemap ; 
 int snd_SfxVolume ; 

int
FUNC3
( mobj_t*	listener,
  mobj_t*	source,
  int*		vol,
  int*		sep,
  int*		pitch )
{
    fixed_t	approx_dist;
    fixed_t	adx;
    fixed_t	ady;
    angle_t	angle;

    // calculate the distance to sound origin
    //  and clip it if necessary
    adx = FUNC2(listener->x - source->x);
    ady = FUNC2(listener->y - source->y);

    // From _GG1_ p.428. Appox. eucledian distance fast.
    approx_dist = adx + ady - ((adx < ady ? adx : ady)>>1);
    
    if (gamemap != 8
	&& approx_dist > S_CLIPPING_DIST)
    {
	return 0;
    }
    
    // angle of source to listener
    angle = FUNC1(listener->x,
			    listener->y,
			    source->x,
			    source->y);

    if (angle > listener->angle)
	angle = angle - listener->angle;
    else
	angle = angle + (0xffffffff - listener->angle);

    angle >>= ANGLETOFINESHIFT;

    // stereo separation
    *sep = 128 - (FUNC0(S_STEREO_SWING,finesine[angle])>>FRACBITS);

    // volume calculation
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
	// distance effect
	*vol = (snd_SfxVolume
		* ((S_CLIPPING_DIST - approx_dist)>>FRACBITS))
	    / S_ATTENUATOR; 
    }
    
    return (*vol > 0);
}