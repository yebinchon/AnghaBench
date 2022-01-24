#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int snes_ntsc_rgb_t ;

/* Variables and functions */
 size_t burst_size ; 
 int rgb_bias ; 
 int snes_ntsc_rgb_builder ; 

__attribute__((used)) static void FUNC0( snes_ntsc_rgb_t* io )
{
	int n;
	for ( n = burst_size; n; --n )
	{
		snes_ntsc_rgb_t p0 = io [burst_size * 0] + rgb_bias;
		snes_ntsc_rgb_t p1 = io [burst_size * 1] + rgb_bias;
		snes_ntsc_rgb_t p2 = io [burst_size * 2] + rgb_bias;
		/* merge colors without losing precision */
		io [burst_size * 0] =
				((p0 + p1 - ((p0 ^ p1) & snes_ntsc_rgb_builder)) >> 1) - rgb_bias;
		io [burst_size * 1] =
				((p1 + p2 - ((p1 ^ p2) & snes_ntsc_rgb_builder)) >> 1) - rgb_bias;
		io [burst_size * 2] =
				((p2 + p0 - ((p2 ^ p0) & snes_ntsc_rgb_builder)) >> 1) - rgb_bias;
		++io;
	}
}