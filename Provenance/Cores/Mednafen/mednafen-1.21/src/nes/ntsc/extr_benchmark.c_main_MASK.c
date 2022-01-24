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
struct data_t {int** in; int /*<<< orphan*/ * out; int /*<<< orphan*/  ntsc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct data_t*) ; 
 int in_height ; 
 int in_width ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC7 () ; 

int FUNC8()
{
	struct data_t* data = (struct data_t*) FUNC2( sizeof *data );
	if ( data )
	{
		/* fill with random pixel data */
		int y;
		for ( y = 0; y < in_height; y++ )
		{
			int x;
			for ( x = 0; x < in_width; x++ )
				data->in [y] [x] = FUNC6() >> 4 & 0x1F;
		}
		
		FUNC5( "Timing nes_ntsc...\n" );
		FUNC0( stdout );
		
		FUNC4( &data->ntsc, 0 );
		
		/* measure frame rate */
		while ( FUNC7() )
		{
			FUNC3( &data->ntsc, data->in [0], in_width, 0,
				in_width, in_height, data->out [0], sizeof data->out [0] );
		}
		
		FUNC1( data );
	}
	
	return 0;
}