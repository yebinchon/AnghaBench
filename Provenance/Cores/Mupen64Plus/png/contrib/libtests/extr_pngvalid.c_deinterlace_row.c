
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ png_uint_32 ;
typedef int png_const_bytep ;
typedef int png_bytep ;


 unsigned int PNG_PASS_COL_SHIFT (int) ;
 scalar_t__ PNG_PASS_START_COL (int) ;
 int pixel_copy (int ,scalar_t__,int ,scalar_t__,unsigned int,int) ;

__attribute__((used)) static void
deinterlace_row(png_bytep buffer, png_const_bytep row,
   unsigned int pixel_size, png_uint_32 w, int pass, int littleendian)
{





   png_uint_32 xin, xout, xstep;

   xout = PNG_PASS_START_COL(pass);
   xstep = 1U<<PNG_PASS_COL_SHIFT(pass);

   for (xin=0; xout<w; xout+=xstep)
   {
      pixel_copy(buffer, xout, row, xin, pixel_size, littleendian);
      ++xin;
   }
}
