#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {float speed; unsigned int submission_chunk; int samples; int channels; } ;
struct TYPE_5__ {float value; } ;
struct TYPE_4__ {float value; } ;

/* Variables and functions */
 float FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_3__ dma ; 
 TYPE_2__* s_mixPreStep ; 
 TYPE_1__* s_mixahead ; 
 scalar_t__ s_soundMuted ; 
 int /*<<< orphan*/  s_soundStarted ; 
 int s_soundtime ; 

void FUNC6(void) {
	unsigned        endtime;
	int				samps;
	static			float	lastTime = 0.0f;
	float			ma, op;
	float			thisTime, sane;
	static			int ot = -1;

	if ( !s_soundStarted || s_soundMuted ) {
		return;
	}

	thisTime = FUNC0();

	// Updates s_soundtime
	FUNC3();

	if (s_soundtime == ot) {
		return;
	}
	ot = s_soundtime;

	// clear any sound effects that end before the current time,
	// and start any new sounds
	FUNC5();

	sane = thisTime - lastTime;
	if (sane<11) {
		sane = 11;			// 85hz
	}

	ma = s_mixahead->value * dma.speed;
	op = s_mixPreStep->value + sane*dma.speed*0.01;

	if (op < ma) {
		ma = op;
	}

	// mix ahead of current position
	endtime = s_soundtime + ma;

	// mix to an even submission block size
	endtime = (endtime + dma.submission_chunk-1)
		& ~(dma.submission_chunk-1);

	// never mix more than the complete buffer
	samps = dma.samples >> (dma.channels-1);
	if (endtime - s_soundtime > samps)
		endtime = s_soundtime + samps;



	FUNC1 ();

	FUNC4 (endtime);

	FUNC2 ();

	lastTime = thisTime;
}