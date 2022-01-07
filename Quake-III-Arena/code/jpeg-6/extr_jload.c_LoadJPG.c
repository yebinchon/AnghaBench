
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jpeg_error_mgr {int dummy; } ;
struct jpeg_decompress_struct {int output_width; int output_components; int output_height; int output_scanline; int err; } ;
typedef scalar_t__ fileHandle_t ;
typedef scalar_t__ JSAMPARRAY ;


 int FS_FCloseFile (scalar_t__) ;
 int FS_FOpenFileRead (char const*,scalar_t__*,int ) ;
 int TRUE ;
 unsigned char* Z_Malloc (int) ;
 int jpeg_create_decompress (struct jpeg_decompress_struct*) ;
 int jpeg_destroy_decompress (struct jpeg_decompress_struct*) ;
 int jpeg_finish_decompress (struct jpeg_decompress_struct*) ;
 int jpeg_read_header (struct jpeg_decompress_struct*,int ) ;
 int jpeg_read_scanlines (struct jpeg_decompress_struct*,scalar_t__,int) ;
 int jpeg_start_decompress (struct jpeg_decompress_struct*) ;
 int jpeg_std_error (struct jpeg_error_mgr*) ;
 int jpeg_stdio_src (struct jpeg_decompress_struct*,scalar_t__) ;
 int qfalse ;

int LoadJPG( const char *filename, unsigned char **pic, int *width, int *height ) {



  struct jpeg_decompress_struct cinfo;
  struct jpeg_error_mgr jerr;

  fileHandle_t infile;
  JSAMPARRAY buffer;
  int row_stride;
  unsigned char *out;







  FS_FOpenFileRead( filename, &infile, qfalse );
  if (infile == 0) {
    return 0;
  }
  cinfo.err = jpeg_std_error(&jerr);


  jpeg_create_decompress(&cinfo);



  jpeg_stdio_src(&cinfo, infile);



  (void) jpeg_read_header(&cinfo, TRUE);
  (void) jpeg_start_decompress(&cinfo);
  row_stride = cinfo.output_width * cinfo.output_components;

  out = Z_Malloc(cinfo.output_width*cinfo.output_height*cinfo.output_components);

  *pic = out;
  *width = cinfo.output_width;
  *height = cinfo.output_height;







  while (cinfo.output_scanline < cinfo.output_height) {




 buffer = (JSAMPARRAY)out+(row_stride*cinfo.output_scanline);
    (void) jpeg_read_scanlines(&cinfo, buffer, 1);
  }



  (void) jpeg_finish_decompress(&cinfo);







  jpeg_destroy_decompress(&cinfo);






  FS_FCloseFile(infile);






  return 1;
}
