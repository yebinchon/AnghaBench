
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float* vec3_t ;
typedef float byte ;


 int VectorCopy (float const*,float*) ;
 int VectorScale (float*,int,float*) ;

void ColorToBytes( const float *color, byte *colorBytes ) {
 float max;
 vec3_t sample;

 VectorCopy( color, sample );


 max = sample[0];
 if ( sample[1] > max ) {
  max = sample[1];
 }
 if ( sample[2] > max ) {
  max = sample[2];
 }
 if ( max > 255 ) {
  VectorScale( sample, 255/max, sample );
 }
 colorBytes[ 0 ] = sample[0];
 colorBytes[ 1 ] = sample[1];
 colorBytes[ 2 ] = sample[2];
}
