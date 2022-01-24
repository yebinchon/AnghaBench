#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  data ;
typedef  int /*<<< orphan*/  byte ;
struct TYPE_2__ {float speed; } ;

/* Variables and functions */
 int FUNC0 (short) ; 
 TYPE_1__ dma ; 

__attribute__((used)) static int FUNC1( short *sfx, int inrate, int inwidth, int samples, byte *data ) {
	int			outcount;
	int			srcsample;
	float		stepscale;
	int			i;
	int			sample, samplefrac, fracstep;
	
	stepscale = (float)inrate / dma.speed;	// this is usually 0.5, 1, or 2

	outcount = samples / stepscale;

	samplefrac = 0;
	fracstep = stepscale * 256;

	for (i=0 ; i<outcount ; i++)
	{
		srcsample = samplefrac >> 8;
		samplefrac += fracstep;
		if( inwidth == 2 ) {
			sample = FUNC0 ( ((short *)data)[srcsample] );
		} else {
			sample = (int)( (unsigned char)(data[srcsample]) - 128) << 8;
		}
		sfx[i] = sample;
	}
	return outcount;
}