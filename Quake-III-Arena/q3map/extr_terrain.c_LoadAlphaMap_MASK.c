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
typedef  int byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int**,int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int**,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 char* FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 
 int FUNC8 (char*) ; 
 int* FUNC9 (int) ; 
 int /*<<< orphan*/  mapent ; 

byte *FUNC10( int *num_layers, int *alphawidth, int *alphaheight ) {
	int			*alphamap32;
	byte		*alphamap;
	const char	*alphamapname;
	char		ext[ 128 ];
	int			width;
	int			height;
	int			layers;
	int			size;
	int			i;

	FUNC7( alphawidth );
	FUNC7( alphaheight );
	FUNC7( num_layers );

	layers = FUNC8( FUNC6( mapent, "layers" ) );
	if ( layers < 1 ) {
		FUNC0 ("SetTerrainTextures: invalid value for 'layers' (%d)", layers );
	}

	alphamapname = FUNC6( mapent, "alphamap" );
	if ( !alphamapname[ 0 ] ) {
		FUNC0 ("LoadAlphaMap: No alphamap specified on terrain" );
	}

	FUNC2( alphamapname, ext);
	if ( !FUNC5( ext, "tga" ) ) {
		FUNC4( FUNC1( alphamapname ), &alphamap32, &width, &height );

		size = width * height;
		alphamap = FUNC9( size );
		for( i = 0; i < size; i++ ) {
			alphamap[ i ] = ( ( alphamap32[ i ] & 0xff ) * layers ) / 256;
			if ( alphamap[ i ] >= layers ) {
				alphamap[ i ] = layers - 1;
			}
		}
	} else {
		FUNC3( FUNC1( alphamapname ), &alphamap, NULL, &width, &height );
		size = width * height;
		for( i = 0; i < size; i++ ) {
			if ( alphamap[ i ] >= layers ) {
				alphamap[ i ] = layers - 1;
			}
		}
	}

	if ( ( width < 2 ) || ( height < 2 ) ) {
		FUNC0 ("LoadAlphaMap: alphamap width/height must be at least 2x2." );
	}

	*num_layers		= layers;
	*alphawidth		= width;
	*alphaheight	= height;

	return alphamap;
}