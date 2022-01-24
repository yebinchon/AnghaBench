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
typedef  int /*<<< orphan*/  ulg ;
typedef  char uch ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int bit_depth ; 
 int channels ; 
 int color_type ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  height ; 
 int /*<<< orphan*/ * saved_infile ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  width ; 

int FUNC3(FILE *infile, ulg *pWidth, ulg *pHeight)
{
    static uch ppmline[256];
    int maxval;


    saved_infile = infile;

    FUNC0(ppmline, 256, infile);
    if (ppmline[0] != 'P' || ppmline[1] != '6') {
        FUNC1(stderr, "ERROR:  not a PPM file\n");
        return 1;
    }
    /* possible color types:  P5 = grayscale (0), P6 = RGB (2), P8 = RGBA (6) */
    if (ppmline[1] == '6') {
        color_type = 2;
        channels = 3;
    } else if (ppmline[1] == '8') {
        color_type = 6;
        channels = 4;
    } else /* if (ppmline[1] == '5') */ {
        color_type = 0;
        channels = 1;
    }

    do {
        FUNC0(ppmline, 256, infile);
    } while (ppmline[0] == '#');
    FUNC2(ppmline, "%lu %lu", &width, &height);

    do {
        FUNC0(ppmline, 256, infile);
    } while (ppmline[0] == '#');
    FUNC2(ppmline, "%d", &maxval);
    if (maxval != 255) {
        FUNC1(stderr, "ERROR:  maxval = %d\n", maxval);
        return 2;
    }
    bit_depth = 8;

    *pWidth = width;
    *pHeight = height;

    return 0;
}