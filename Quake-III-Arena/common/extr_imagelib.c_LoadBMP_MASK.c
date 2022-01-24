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
typedef  scalar_t__ qboolean ;
typedef  int /*<<< orphan*/  byte ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int) ; 
 scalar_t__ qfalse ; 
 scalar_t__ qtrue ; 

void FUNC8 (const char *filename, byte **pic, byte **palette, int *width, int *height)
{
	byte	*out;
	FILE	*fin;
	int		i;
    int		bfSize; 
    int		bfOffBits; 
	int		structSize;
    int		bcWidth; 
    int     bcHeight; 
    int	    bcPlanes; 
    int		bcBitCount; 
	byte	bcPalette[1024];
	qboolean	flipped;

	fin = FUNC4 (filename, "rb");
	if (!fin) {
		FUNC0 ("Couldn't read %s", filename);
	}

	i = FUNC3 (fin);
	if (i != 'B' + ('M'<<8) ) {
		FUNC0 ("%s is not a bmp file", filename);
	}

	bfSize = FUNC2 (fin);
	FUNC3(fin);
	FUNC3(fin);
	bfOffBits = FUNC2 (fin);

	// the size will tell us if it is a
	// bitmapinfo or a bitmapcore
	structSize = FUNC2 (fin);
	if (structSize == 40) {
		// bitmapinfo
        bcWidth = FUNC2(fin); 
        bcHeight= FUNC2(fin); 
        bcPlanes = FUNC3(fin); 
        bcBitCount = FUNC3(fin); 

		FUNC6 (fin, 24, SEEK_CUR);

		if (palette) {
			FUNC5 (bcPalette, 1, 1024, fin);
			*palette = FUNC7(768);

			for (i = 0 ; i < 256 ; i++) {
				(*palette)[i * 3 + 0] = bcPalette[i * 4 + 2];
				(*palette)[i * 3 + 1] = bcPalette[i * 4 + 1];
				(*palette)[i * 3 + 2] = bcPalette[i * 4 + 0];
			}
		}
	} else if (structSize == 12) {
		// bitmapcore
        bcWidth = FUNC3(fin); 
        bcHeight= FUNC3(fin); 
        bcPlanes = FUNC3(fin); 
        bcBitCount = FUNC3(fin); 

		if (palette) {
			FUNC5 (bcPalette, 1, 768, fin);
			*palette = FUNC7(768);

			for (i = 0 ; i < 256 ; i++) {
				(*palette)[i * 3 + 0] = bcPalette[i * 3 + 2];
				(*palette)[i * 3 + 1] = bcPalette[i * 3 + 1];
				(*palette)[i * 3 + 2] = bcPalette[i * 3 + 0];
			}
		}
	} else {
		FUNC0 ("%s had strange struct size", filename);
	}
	
	if (bcPlanes != 1) {
		FUNC0 ("%s was not a single plane image", filename);
	}

	if (bcBitCount != 8) {
		FUNC0 ("%s was not an 8 bit image", filename);
	}

	if (bcHeight < 0) {
		bcHeight = -bcHeight;
		flipped = qtrue;
	} else {
		flipped = qfalse;
	}

	if (width)
		*width = bcWidth;
	if (height)
		*height = bcHeight;

	if (!pic) {
		FUNC1 (fin);
		return;
	}

	out = FUNC7 ( bcWidth * bcHeight );
	*pic = out;
	FUNC6 (fin, bfOffBits, SEEK_SET);

	if (flipped) {
		for (i = 0 ; i < bcHeight ; i++) {
			FUNC5 (out + bcWidth * (bcHeight - 1 - i), 1, bcWidth, fin);
		}
	} else {
		FUNC5 (out, 1, bcWidth*bcHeight, fin);
	}

	FUNC1 (fin);
}