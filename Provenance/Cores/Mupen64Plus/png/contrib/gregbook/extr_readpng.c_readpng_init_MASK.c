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
typedef  int /*<<< orphan*/  uch ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  bit_depth ; 
 int /*<<< orphan*/  color_type ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  height ; 
 int /*<<< orphan*/  info_ptr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  png_ptr ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  width ; 

int FUNC12(FILE *infile, ulg *pWidth, ulg *pHeight)
{
    uch sig[8];


    /* first do a quick check that the file really is a PNG image; could
     * have used slightly more general png_sig_cmp() function instead */

    FUNC0(sig, 1, 8, infile);
    if (FUNC10(sig, 0, 8))
        return 1;   /* bad signature */


    /* could pass pointers to user-defined error handlers instead of NULLs: */

    png_ptr = FUNC2(FUNC5(NULL), NULL, NULL,
        NULL);
    if (!png_ptr)
        return 4;   /* out of memory */

    info_ptr = FUNC1(png_ptr);
    if (!info_ptr) {
        FUNC3(&png_ptr, NULL, NULL);
        return 4;   /* out of memory */
    }


    /* we could create a second info struct here (end_info), but it's only
     * useful if we want to keep pre- and post-IDAT chunk info separated
     * (mainly for PNG-aware image editors and converters) */


    /* setjmp() must be called in every function that calls a PNG-reading
     * libpng function */

    if (FUNC11(FUNC7(png_ptr))) {
        FUNC3(&png_ptr, &info_ptr, NULL);
        return 2;
    }


    FUNC6(png_ptr, infile);
    FUNC9(png_ptr, 8);  /* we already read the 8 signature bytes */

    FUNC8(png_ptr, info_ptr);  /* read all PNG info up to image data */


    /* alternatively, could make separate calls to png_get_image_width(),
     * etc., but want bit_depth and color_type for later [don't care about
     * compression_type and filter_type => NULLs] */

    FUNC4(png_ptr, info_ptr, &width, &height, &bit_depth, &color_type,
      NULL, NULL, NULL);
    *pWidth = width;
    *pHeight = height;


    /* OK, that's all we need for now; return happy */

    return 0;
}