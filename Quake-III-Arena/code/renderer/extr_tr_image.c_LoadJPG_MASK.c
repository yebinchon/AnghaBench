#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct jpeg_error_mgr {int dummy; } ;
struct jpeg_decompress_struct {int output_width; int output_components; int output_height; int output_scanline; int /*<<< orphan*/  err; } ;
typedef  int byte ;
struct TYPE_2__ {unsigned char* (* Malloc ) (int) ;int /*<<< orphan*/  (* FS_FreeFile ) (int*) ;int /*<<< orphan*/  (* FS_ReadFile ) (char*,void**) ;} ;
typedef  int** JSAMPARRAY ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct jpeg_decompress_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct jpeg_decompress_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct jpeg_decompress_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct jpeg_decompress_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct jpeg_decompress_struct*,int**,int) ; 
 int /*<<< orphan*/  FUNC5 (struct jpeg_decompress_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct jpeg_error_mgr*) ; 
 int /*<<< orphan*/  FUNC7 (struct jpeg_decompress_struct*,int*) ; 
 TYPE_1__ ri ; 
 int /*<<< orphan*/  FUNC8 (char*,void**) ; 
 unsigned char* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int*) ; 

__attribute__((used)) static void FUNC11( const char *filename, unsigned char **pic, int *width, int *height ) {
  /* This struct contains the JPEG decompression parameters and pointers to
   * working space (which is allocated as needed by the JPEG library).
   */
  struct jpeg_decompress_struct cinfo;
  /* We use our private extension JPEG error handler.
   * Note that this struct must live as long as the main JPEG parameter
   * struct, to avoid dangling-pointer problems.
   */
  /* This struct represents a JPEG error handler.  It is declared separately
   * because applications often want to supply a specialized error handler
   * (see the second half of this file for an example).  But here we just
   * take the easy way out and use the standard error handler, which will
   * print a message on stderr and call exit() if compression fails.
   * Note that this struct must live as long as the main JPEG parameter
   * struct, to avoid dangling-pointer problems.
   */
  struct jpeg_error_mgr jerr;
  /* More stuff */
  JSAMPARRAY buffer;		/* Output row buffer */
  int row_stride;		/* physical row width in output buffer */
  unsigned char *out;
  byte	*fbuffer;
  byte  *bbuf;

  /* In this example we want to open the input file before doing anything else,
   * so that the setjmp() error recovery below can assume the file is open.
   * VERY IMPORTANT: use "b" option to fopen() if you are on a machine that
   * requires it in order to read binary files.
   */

  ri.FS_ReadFile ( ( char * ) filename, (void **)&fbuffer);
  if (!fbuffer) {
	return;
  }

  /* Step 1: allocate and initialize JPEG decompression object */

  /* We have to set up the error handler first, in case the initialization
   * step fails.  (Unlikely, but it could happen if you are out of memory.)
   * This routine fills in the contents of struct jerr, and returns jerr's
   * address which we place into the link field in cinfo.
   */
  cinfo.err = FUNC6(&jerr);

  /* Now we can initialize the JPEG decompression object. */
  FUNC0(&cinfo);

  /* Step 2: specify data source (eg, a file) */

  FUNC7(&cinfo, fbuffer);

  /* Step 3: read file parameters with jpeg_read_header() */

  (void) FUNC3(&cinfo, TRUE);
  /* We can ignore the return value from jpeg_read_header since
   *   (a) suspension is not possible with the stdio data source, and
   *   (b) we passed TRUE to reject a tables-only JPEG file as an error.
   * See libjpeg.doc for more info.
   */

  /* Step 4: set parameters for decompression */

  /* In this example, we don't need to change any of the defaults set by
   * jpeg_read_header(), so we do nothing here.
   */

  /* Step 5: Start decompressor */

  (void) FUNC5(&cinfo);
  /* We can ignore the return value since suspension is not possible
   * with the stdio data source.
   */

  /* We may need to do some setup of our own at this point before reading
   * the data.  After jpeg_start_decompress() we have the correct scaled
   * output image dimensions available, as well as the output colormap
   * if we asked for color quantization.
   * In this example, we need to make an output work buffer of the right size.
   */ 
  /* JSAMPLEs per row in output buffer */
  row_stride = cinfo.output_width * cinfo.output_components;

  out = ri.Malloc(cinfo.output_width*cinfo.output_height*cinfo.output_components);

  *pic = out;
  *width = cinfo.output_width;
  *height = cinfo.output_height;

  /* Step 6: while (scan lines remain to be read) */
  /*           jpeg_read_scanlines(...); */

  /* Here we use the library's state variable cinfo.output_scanline as the
   * loop counter, so that we don't have to keep track ourselves.
   */
  while (cinfo.output_scanline < cinfo.output_height) {
    /* jpeg_read_scanlines expects an array of pointers to scanlines.
     * Here the array is only one element long, but you could ask for
     * more than one scanline at a time if that's more convenient.
     */
	bbuf = ((out+(row_stride*cinfo.output_scanline)));
	buffer = &bbuf;
    (void) FUNC4(&cinfo, buffer, 1);
  }

  // clear all the alphas to 255
  {
	  int	i, j;
		byte	*buf;

		buf = *pic;

	  j = cinfo.output_width * cinfo.output_height * 4;
	  for ( i = 3 ; i < j ; i+=4 ) {
		  buf[i] = 255;
	  }
  }

  /* Step 7: Finish decompression */

  (void) FUNC2(&cinfo);
  /* We can ignore the return value since suspension is not possible
   * with the stdio data source.
   */

  /* Step 8: Release JPEG decompression object */

  /* This is an important step since it will release a good deal of memory. */
  FUNC1(&cinfo);

  /* After finish_decompress, we can close the input file.
   * Here we postpone it until after no more JPEG errors are possible,
   * so as to simplify the setjmp error logic above.  (Actually, I don't
   * think that jpeg_destroy can do an error exit, but why assume anything...)
   */
  ri.FS_FreeFile (fbuffer);

  /* At this point you may want to check to see whether any corrupt-data
   * warnings occurred (test whether jerr.pub.num_warnings is nonzero).
   */

  /* And we're done! */
}