
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int j_compress_ptr ;
typedef int boolean ;


 int jpeg_quality_scaling (int) ;
 int jpeg_set_linear_quality (int ,int,int ) ;

void
jpeg_set_quality (j_compress_ptr cinfo, int quality, boolean force_baseline)





{

  quality = jpeg_quality_scaling(quality);


  jpeg_set_linear_quality(cinfo, quality, force_baseline);
}
