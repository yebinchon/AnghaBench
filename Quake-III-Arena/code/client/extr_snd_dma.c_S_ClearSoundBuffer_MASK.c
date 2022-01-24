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
typedef  int /*<<< orphan*/  loopSound_t ;
typedef  int /*<<< orphan*/  channel_t ;
struct TYPE_2__ {int samplebits; int samples; scalar_t__ buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int MAX_CHANNELS ; 
 int MAX_GENTITIES ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int,int) ; 
 TYPE_1__ dma ; 
 int /*<<< orphan*/  loopSounds ; 
 int /*<<< orphan*/  loop_channels ; 
 scalar_t__ numLoopChannels ; 
 scalar_t__ s_rawend ; 
 int /*<<< orphan*/  s_soundStarted ; 

void FUNC5( void ) {
	int		clear;
		
	if (!s_soundStarted)
		return;

	// stop looping sounds
	FUNC0(loopSounds, 0, MAX_GENTITIES*sizeof(loopSound_t));
	FUNC0(loop_channels, 0, MAX_CHANNELS*sizeof(channel_t));
	numLoopChannels = 0;

	FUNC3();

	s_rawend = 0;

	if (dma.samplebits == 8)
		clear = 0x80;
	else
		clear = 0;

	FUNC1 ();
	if (dma.buffer)
    // TTimo: due to a particular bug workaround in linux sound code,
    //   have to optionally use a custom C implementation of Com_Memset
    //   not affecting win32, we have #define Snd_Memset Com_Memset
    // https://zerowing.idsoftware.com/bugzilla/show_bug.cgi?id=371
		FUNC4(dma.buffer, clear, dma.samples * dma.samplebits/8);
	FUNC2 ();
}