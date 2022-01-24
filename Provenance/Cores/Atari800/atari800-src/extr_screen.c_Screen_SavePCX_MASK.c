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
typedef  size_t UBYTE ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int ATARI_VISIBLE_WIDTH ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 size_t* Colours_table ; 
 int Screen_HEIGHT ; 
 int Screen_WIDTH ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(FILE *fp, UBYTE *ptr1, UBYTE *ptr2)
{
	int i;
	int x;
	int y;
	UBYTE plane = 16;	/* 16 = Red, 8 = Green, 0 = Blue */
	UBYTE last;
	UBYTE count;

	FUNC3(0xa, fp);   /* pcx signature */
	FUNC3(0x5, fp);   /* version 5 */
	FUNC3(0x1, fp);   /* RLE encoding */
	FUNC3(0x8, fp);   /* bits per pixel */
	FUNC4(0, fp);     /* XMin */
	FUNC4(0, fp);     /* YMin */
	FUNC4(ATARI_VISIBLE_WIDTH - 1, fp); /* XMax */
	FUNC4(Screen_HEIGHT - 1, fp);        /* YMax */
	FUNC4(0, fp);     /* HRes */
	FUNC4(0, fp);     /* VRes */
	for (i = 0; i < 48; i++)
		FUNC3(0, fp); /* EGA color palette */
	FUNC3(0, fp);     /* reserved */
	FUNC3(ptr2 != NULL ? 3 : 1, fp); /* number of bit planes */
	FUNC4(ATARI_VISIBLE_WIDTH, fp);  /* number of bytes per scan line per color plane */
	FUNC4(1, fp);     /* palette info */
	FUNC4(ATARI_VISIBLE_WIDTH, fp); /* screen resolution */
	FUNC4(Screen_HEIGHT, fp);
	for (i = 0; i < 54; i++)
		FUNC3(0, fp);  /* unused */

	for (y = 0; y < Screen_HEIGHT; ) {
		x = 0;
		do {
			last = ptr2 != NULL ? (((Colours_table[*ptr1] >> plane) & 0xff) + ((Colours_table[*ptr2] >> plane) & 0xff)) >> 1 : *ptr1;
			count = 0xc0;
			do {
				ptr1++;
				if (ptr2 != NULL)
					ptr2++;
				count++;
				x++;
			} while (last == (ptr2 != NULL ? (((Colours_table[*ptr1] >> plane) & 0xff) + ((Colours_table[*ptr2] >> plane) & 0xff)) >> 1 : *ptr1)
						&& count < 0xff && x < ATARI_VISIBLE_WIDTH);
			if (count > 0xc1 || last >= 0xc0)
				FUNC3(count, fp);
			FUNC3(last, fp);
		} while (x < ATARI_VISIBLE_WIDTH);

		if (ptr2 != NULL && plane) {
			ptr1 -= ATARI_VISIBLE_WIDTH;
			ptr2 -= ATARI_VISIBLE_WIDTH;
			plane -= 8;
		}
		else {
			ptr1 += Screen_WIDTH - ATARI_VISIBLE_WIDTH;
			if (ptr2 != NULL) {
				ptr2 += Screen_WIDTH - ATARI_VISIBLE_WIDTH;
				plane = 16;
			}
			y++;
		}
	}

	if (ptr2 == NULL) {
		/* write palette */
		FUNC3(0xc, fp);
		for (i = 0; i < 256; i++) {
			FUNC3(FUNC2(i), fp);
			FUNC3(FUNC1(i), fp);
			FUNC3(FUNC0(i), fp);
		}
	}
}