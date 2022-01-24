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
typedef  int /*<<< orphan*/  snes_ntsc_t ;
typedef  int /*<<< orphan*/  snes_ntsc_out_t ;
typedef  int /*<<< orphan*/  SNES_NTSC_IN_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SNES_NTSC_OUT_DEPTH ; 
 int /*<<< orphan*/  snes_ntsc_black ; 
 int snes_ntsc_burst_count ; 
 int snes_ntsc_in_chunk ; 

void FUNC4( snes_ntsc_t const* ntsc, SNES_NTSC_IN_T const* input, long in_row_width,
		int burst_phase, int in_width, int in_height, void* rgb_out, long out_pitch, int first, int last )
{
	int chunk_count = (in_width - 2) / (snes_ntsc_in_chunk * 2);
	for ( ; in_height; --in_height )
	{
		SNES_NTSC_IN_T const* line_in = input;
		FUNC3( ntsc, burst_phase,
				snes_ntsc_black, snes_ntsc_black, snes_ntsc_black,
				FUNC0( line_in [0] ),
				FUNC0( line_in [1] ) );
		snes_ntsc_out_t* line_out = (snes_ntsc_out_t*) rgb_out;
		int n;
		line_in += 2;

		for ( n = chunk_count; n; --n )
		{
			/* twice as many input pixels per chunk */
			FUNC1( 0, FUNC0( line_in [0] ) );
			FUNC2( 0, line_out [0], SNES_NTSC_OUT_DEPTH );

			FUNC1( 1, FUNC0( line_in [1] ) );
			FUNC2( 1, line_out [1], SNES_NTSC_OUT_DEPTH );

			FUNC1( 2, FUNC0( line_in [2] ) );
			FUNC2( 2, line_out [2], SNES_NTSC_OUT_DEPTH );

			FUNC1( 3, FUNC0( line_in [3] ) );
			FUNC2( 3, line_out [3], SNES_NTSC_OUT_DEPTH );

			FUNC1( 4, FUNC0( line_in [4] ) );
			FUNC2( 4, line_out [4], SNES_NTSC_OUT_DEPTH );

			FUNC1( 5, FUNC0( line_in [5] ) );
			FUNC2( 5, line_out [5], SNES_NTSC_OUT_DEPTH );
			FUNC2( 6, line_out [6], SNES_NTSC_OUT_DEPTH );

			line_in  += 6;
			line_out += 7;
		}

		FUNC1( 0, snes_ntsc_black );
		FUNC2( 0, line_out [0], SNES_NTSC_OUT_DEPTH );

		FUNC1( 1, snes_ntsc_black );
		FUNC2( 1, line_out [1], SNES_NTSC_OUT_DEPTH );

		FUNC1( 2, snes_ntsc_black );
		FUNC2( 2, line_out [2], SNES_NTSC_OUT_DEPTH );

		FUNC1( 3, snes_ntsc_black );
		FUNC2( 3, line_out [3], SNES_NTSC_OUT_DEPTH );

		FUNC1( 4, snes_ntsc_black );
		FUNC2( 4, line_out [4], SNES_NTSC_OUT_DEPTH );

		FUNC1( 5, snes_ntsc_black );
		FUNC2( 5, line_out [5], SNES_NTSC_OUT_DEPTH );
		FUNC2( 6, line_out [6], SNES_NTSC_OUT_DEPTH );

		burst_phase = (burst_phase + 1) % snes_ntsc_burst_count;
		input += in_row_width;
		rgb_out = (char*) rgb_out + out_pitch;
	}
}