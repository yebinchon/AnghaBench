
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int byte ;
struct TYPE_2__ {int integer; } ;


 int R_MipMap2 (unsigned int*,int,int) ;
 TYPE_1__* r_simpleMipMaps ;

__attribute__((used)) static void R_MipMap (byte *in, int width, int height) {
 int i, j;
 byte *out;
 int row;

 if ( !r_simpleMipMaps->integer ) {
  R_MipMap2( (unsigned *)in, width, height );
  return;
 }

 if ( width == 1 && height == 1 ) {
  return;
 }

 row = width * 4;
 out = in;
 width >>= 1;
 height >>= 1;

 if ( width == 0 || height == 0 ) {
  width += height;
  for (i=0 ; i<width ; i++, out+=4, in+=8 ) {
   out[0] = ( in[0] + in[4] )>>1;
   out[1] = ( in[1] + in[5] )>>1;
   out[2] = ( in[2] + in[6] )>>1;
   out[3] = ( in[3] + in[7] )>>1;
  }
  return;
 }

 for (i=0 ; i<height ; i++, in+=row) {
  for (j=0 ; j<width ; j++, out+=4, in+=8) {
   out[0] = (in[0] + in[4] + in[row+0] + in[row+4])>>2;
   out[1] = (in[1] + in[5] + in[row+1] + in[row+5])>>2;
   out[2] = (in[2] + in[6] + in[row+2] + in[row+6])>>2;
   out[3] = (in[3] + in[7] + in[row+3] + in[row+7])>>2;
  }
 }
}
