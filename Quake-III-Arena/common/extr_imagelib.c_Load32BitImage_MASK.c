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
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int**,int**,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int**,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int* FUNC4 (int) ; 

void FUNC5 (const char *name, unsigned **pixels,  int *width, int *height)
{
	char	ext[128];
	byte	*palette;
	byte	*pixels8;
	byte	*pixels32;
	int		size;
	int		i;
	int		v;

	FUNC0 (name, ext);
	if (!FUNC3 (ext, "tga")) {
		FUNC2 (name, (byte **)pixels, width, height);
	} else {
		FUNC1 (name, &pixels8, &palette, width, height);
		if (!pixels) {
			return;
		}
		size = *width * *height;
		pixels32 = FUNC4(size * 4);
		*pixels = (unsigned *)pixels32;
		for (i = 0 ; i < size ; i++) {
			v = pixels8[i];
			pixels32[i*4 + 0] = palette[ v * 3 + 0 ];
			pixels32[i*4 + 1] = palette[ v * 3 + 1 ];
			pixels32[i*4 + 2] = palette[ v * 3 + 2 ];
			pixels32[i*4 + 3] = 0xff;
		}
	}
}