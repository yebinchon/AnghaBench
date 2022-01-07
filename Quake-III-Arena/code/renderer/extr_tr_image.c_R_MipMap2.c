
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int byte ;
struct TYPE_2__ {unsigned int* (* Hunk_AllocateTempMemory ) (int) ;int (* Hunk_FreeTempMemory ) (unsigned int*) ;} ;


 int Com_Memcpy (unsigned int*,unsigned int*,int) ;
 TYPE_1__ ri ;
 unsigned int* stub1 (int) ;
 int stub2 (unsigned int*) ;

__attribute__((used)) static void R_MipMap2( unsigned *in, int inWidth, int inHeight ) {
 int i, j, k;
 byte *outpix;
 int inWidthMask, inHeightMask;
 int total;
 int outWidth, outHeight;
 unsigned *temp;

 outWidth = inWidth >> 1;
 outHeight = inHeight >> 1;
 temp = ri.Hunk_AllocateTempMemory( outWidth * outHeight * 4 );

 inWidthMask = inWidth - 1;
 inHeightMask = inHeight - 1;

 for ( i = 0 ; i < outHeight ; i++ ) {
  for ( j = 0 ; j < outWidth ; j++ ) {
   outpix = (byte *) ( temp + i * outWidth + j );
   for ( k = 0 ; k < 4 ; k++ ) {
    total =
     1 * ((byte *)&in[ ((i*2-1)&inHeightMask)*inWidth + ((j*2-1)&inWidthMask) ])[k] +
     2 * ((byte *)&in[ ((i*2-1)&inHeightMask)*inWidth + ((j*2)&inWidthMask) ])[k] +
     2 * ((byte *)&in[ ((i*2-1)&inHeightMask)*inWidth + ((j*2+1)&inWidthMask) ])[k] +
     1 * ((byte *)&in[ ((i*2-1)&inHeightMask)*inWidth + ((j*2+2)&inWidthMask) ])[k] +

     2 * ((byte *)&in[ ((i*2)&inHeightMask)*inWidth + ((j*2-1)&inWidthMask) ])[k] +
     4 * ((byte *)&in[ ((i*2)&inHeightMask)*inWidth + ((j*2)&inWidthMask) ])[k] +
     4 * ((byte *)&in[ ((i*2)&inHeightMask)*inWidth + ((j*2+1)&inWidthMask) ])[k] +
     2 * ((byte *)&in[ ((i*2)&inHeightMask)*inWidth + ((j*2+2)&inWidthMask) ])[k] +

     2 * ((byte *)&in[ ((i*2+1)&inHeightMask)*inWidth + ((j*2-1)&inWidthMask) ])[k] +
     4 * ((byte *)&in[ ((i*2+1)&inHeightMask)*inWidth + ((j*2)&inWidthMask) ])[k] +
     4 * ((byte *)&in[ ((i*2+1)&inHeightMask)*inWidth + ((j*2+1)&inWidthMask) ])[k] +
     2 * ((byte *)&in[ ((i*2+1)&inHeightMask)*inWidth + ((j*2+2)&inWidthMask) ])[k] +

     1 * ((byte *)&in[ ((i*2+2)&inHeightMask)*inWidth + ((j*2-1)&inWidthMask) ])[k] +
     2 * ((byte *)&in[ ((i*2+2)&inHeightMask)*inWidth + ((j*2)&inWidthMask) ])[k] +
     2 * ((byte *)&in[ ((i*2+2)&inHeightMask)*inWidth + ((j*2+1)&inWidthMask) ])[k] +
     1 * ((byte *)&in[ ((i*2+2)&inHeightMask)*inWidth + ((j*2+2)&inWidthMask) ])[k];
    outpix[k] = total / 36;
   }
  }
 }

 Com_Memcpy( in, temp, outWidth * outHeight * 4 );
 ri.Hunk_FreeTempMemory( temp );
}
