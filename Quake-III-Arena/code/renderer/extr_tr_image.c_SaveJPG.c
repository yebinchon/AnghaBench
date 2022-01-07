
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jpeg_error_mgr {int dummy; } ;
struct jpeg_compress_struct {int image_width; int image_height; int input_components; int next_scanline; int in_color_space; int err; } ;
struct TYPE_2__ {unsigned char* (* Hunk_AllocateTempMemory ) (int) ;int (* Hunk_FreeTempMemory ) (unsigned char*) ;int (* FS_WriteFile ) (char*,unsigned char*,int ) ;} ;
typedef unsigned char* JSAMPROW ;


 int JCS_RGB ;
 int TRUE ;
 int hackSize ;
 int jpegDest (struct jpeg_compress_struct*,unsigned char*,int) ;
 int jpeg_create_compress (struct jpeg_compress_struct*) ;
 int jpeg_destroy_compress (struct jpeg_compress_struct*) ;
 int jpeg_finish_compress (struct jpeg_compress_struct*) ;
 int jpeg_set_defaults (struct jpeg_compress_struct*) ;
 int jpeg_set_quality (struct jpeg_compress_struct*,int,int ) ;
 int jpeg_start_compress (struct jpeg_compress_struct*,int ) ;
 int jpeg_std_error (struct jpeg_error_mgr*) ;
 int jpeg_write_scanlines (struct jpeg_compress_struct*,unsigned char**,int) ;
 TYPE_1__ ri ;
 unsigned char* stub1 (int) ;
 int stub2 (char*,unsigned char*,int ) ;
 int stub3 (unsigned char*) ;

void SaveJPG(char * filename, int quality, int image_width, int image_height, unsigned char *image_buffer) {






  struct jpeg_compress_struct cinfo;
  struct jpeg_error_mgr jerr;

  JSAMPROW row_pointer[1];
  int row_stride;
  unsigned char *out;
  cinfo.err = jpeg_std_error(&jerr);

  jpeg_create_compress(&cinfo);
  out = ri.Hunk_AllocateTempMemory(image_width*image_height*4);
  jpegDest(&cinfo, out, image_width*image_height*4);






  cinfo.image_width = image_width;
  cinfo.image_height = image_height;
  cinfo.input_components = 4;
  cinfo.in_color_space = JCS_RGB;




  jpeg_set_defaults(&cinfo);



  jpeg_set_quality(&cinfo, quality, TRUE );






  jpeg_start_compress(&cinfo, TRUE);
  row_stride = image_width * 4;

  while (cinfo.next_scanline < cinfo.image_height) {




    row_pointer[0] = & image_buffer[((cinfo.image_height-1)*row_stride)-cinfo.next_scanline * row_stride];
    (void) jpeg_write_scanlines(&cinfo, row_pointer, 1);
  }



  jpeg_finish_compress(&cinfo);

  ri.FS_WriteFile( filename, out, hackSize );

  ri.Hunk_FreeTempMemory(out);




  jpeg_destroy_compress(&cinfo);


}
