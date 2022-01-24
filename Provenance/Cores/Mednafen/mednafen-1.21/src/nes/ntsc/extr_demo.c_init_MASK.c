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
typedef  int /*<<< orphan*/  nes_ntsc_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,long,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ nes_height ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned char* nes_pixels ; 
 long nes_width ; 
 int /*<<< orphan*/ * ntsc ; 
 int /*<<< orphan*/  setup ; 

__attribute__((used)) static void FUNC6()
{
	/* read raw image */
	FILE* file = FUNC2( "nes.raw", "rb" );
	if ( !file )
		FUNC0( "Couldn't open image file" );
	nes_pixels = (unsigned char*) FUNC4( (long) nes_height * nes_width );
	if ( !nes_pixels )
		FUNC0( "Out of memory" );
	FUNC3( nes_pixels, nes_width, nes_height, file );
	FUNC1( file );
	
	/* allocate memory for nes_ntsc and initialize */
	ntsc = (nes_ntsc_t*) FUNC4( sizeof (nes_ntsc_t) );
	if ( !ntsc )
		FUNC0( "Out of memory" );
	FUNC5( ntsc, &setup );
}