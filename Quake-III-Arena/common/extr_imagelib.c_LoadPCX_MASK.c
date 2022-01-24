#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int data; int xmin; int ymin; int xmax; int ymax; int hres; int vres; int bytes_per_line; int palette_type; int manufacturer; int version; int encoding; int bits_per_pixel; } ;
typedef  TYPE_1__ pcx_t ;
typedef  int byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 void* FUNC1 (int) ; 
 int FUNC2 (char const*,void**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int) ; 

void FUNC6 (const char *filename, byte **pic, byte **palette, int *width, int *height)
{
	byte	*raw;
	pcx_t	*pcx;
	int		x, y;
	int		len;
	int		dataByte, runLength;
	byte	*out, *pix;

	//
	// load the file
	//
	len = FUNC2 (filename, (void **)&raw);

	//
	// parse the PCX file
	//
	pcx = (pcx_t *)raw;
	raw = &pcx->data;

	pcx->xmin = FUNC1(pcx->xmin);
	pcx->ymin = FUNC1(pcx->ymin);
	pcx->xmax = FUNC1(pcx->xmax);
	pcx->ymax = FUNC1(pcx->ymax);
	pcx->hres = FUNC1(pcx->hres);
	pcx->vres = FUNC1(pcx->vres);
	pcx->bytes_per_line = FUNC1(pcx->bytes_per_line);
	pcx->palette_type = FUNC1(pcx->palette_type);

	if (pcx->manufacturer != 0x0a
		|| pcx->version != 5
		|| pcx->encoding != 1
		|| pcx->bits_per_pixel != 8
		|| pcx->xmax >= 640
		|| pcx->ymax >= 480)
		FUNC0 ("Bad pcx file %s", filename);
	
	if (palette)
	{
		*palette = FUNC4(768);
		FUNC5 (*palette, (byte *)pcx + len - 768, 768);
	}

	if (width)
		*width = pcx->xmax+1;
	if (height)
		*height = pcx->ymax+1;

	if (!pic)
		return;

	out = FUNC4 ( (pcx->ymax+1) * (pcx->xmax+1) );
	if (!out)
		FUNC0 ("Skin_Cache: couldn't allocate");

	*pic = out;

	pix = out;

	for (y=0 ; y<=pcx->ymax ; y++, pix += pcx->xmax+1)
	{
		for (x=0 ; x<=pcx->xmax ; )
		{
			dataByte = *raw++;

			if((dataByte & 0xC0) == 0xC0)
			{
				runLength = dataByte & 0x3F;
				dataByte = *raw++;
			}
			else
				runLength = 1;

			// FIXME: this shouldn't happen, but it does.  Are we decoding the file wrong?
			// Truncate runLength so we don't overrun the end of the buffer
			if ( ( y == pcx->ymax ) && ( x + runLength > pcx->xmax + 1 ) ) {
				runLength = pcx->xmax - x + 1;
			}

			while(runLength-- > 0)
				pix[x++] = dataByte;
		}

	}

	if ( raw - (byte *)pcx > len)
		FUNC0 ("PCX file %s was malformed", filename);

	FUNC3 (pcx);
}