
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LodePNGInfo ;


 int LodePNGText_cleanup (int *) ;

void lodepng_clear_text(LodePNGInfo* info)
{
  LodePNGText_cleanup(info);
}
