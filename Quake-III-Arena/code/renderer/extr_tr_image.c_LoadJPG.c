
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jpeg_error_mgr {int dummy; } ;
struct jpeg_decompress_struct {int output_width; int output_components; int output_height; int output_scanline; int err; } ;
typedef int byte ;
struct TYPE_2__ {unsigned char* (* Malloc ) (int) ;int (* FS_FreeFile ) (int*) ;int (* FS_ReadFile ) (char*,void**) ;} ;
typedef int** JSAMPARRAY ;


 int TRUE ;
 int jpeg_create_decompress (struct jpeg_decompress_struct*) ;
 int jpeg_destroy_decompress (struct jpeg_decompress_struct*) ;
 int jpeg_finish_decompress (struct jpeg_decompress_struct*) ;
 int jpeg_read_header (struct jpeg_decompress_struct*,int ) ;
 int jpeg_read_scanlines (struct jpeg_decompress_struct*,int**,int) ;
 int jpeg_start_decompress (struct jpeg_decompress_struct*) ;
 int jpeg_std_error (struct jpeg_error_mgr*) ;
 int jpeg_stdio_src (struct jpeg_decompress_struct*,int*) ;
 TYPE_1__ ri ;
 int stub1 (char*,void**) ;
 unsigned char* stub2 (int) ;
 int stub3 (int*) ;

__attribute__((used)) static void LoadJPG( const char *filename, unsigned char **pic, int *width, int *height ) {



  struct jpeg_decompress_struct cinfo;
  struct jpeg_error_mgr jerr;

  JSAMPARRAY buffer;
  int row_stride;
  unsigned char *out;
  byte *fbuffer;
  byte *bbuf;







  ri.FS_ReadFile ( ( char * ) filename, (void **)&fbuffer);
  if (!fbuffer) {
 return;
  }
  cinfo.err = jpeg_std_error(&jerr);


  jpeg_create_decompress(&cinfo);



  jpeg_stdio_src(&cinfo, fbuffer);



  (void) jpeg_read_header(&cinfo, TRUE);
  (void) jpeg_start_decompress(&cinfo);
  row_stride = cinfo.output_width * cinfo.output_components;

  out = ri.Malloc(cinfo.output_width*cinfo.output_height*cinfo.output_components);

  *pic = out;
  *width = cinfo.output_width;
  *height = cinfo.output_height;







  while (cinfo.output_scanline < cinfo.output_height) {




 bbuf = ((out+(row_stride*cinfo.output_scanline)));
 buffer = &bbuf;
    (void) jpeg_read_scanlines(&cinfo, buffer, 1);
  }


  {
   int i, j;
  byte *buf;

  buf = *pic;

   j = cinfo.output_width * cinfo.output_height * 4;
   for ( i = 3 ; i < j ; i+=4 ) {
    buf[i] = 255;
   }
  }



  (void) jpeg_finish_decompress(&cinfo);







  jpeg_destroy_decompress(&cinfo);






  ri.FS_FreeFile (fbuffer);






}
