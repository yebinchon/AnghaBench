
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ j_compress_ptr ;
typedef int j_common_ptr ;


 int jpeg_destroy (int ) ;

void
jpeg_destroy_compress (j_compress_ptr cinfo)
{
  jpeg_destroy((j_common_ptr) cinfo);
}
