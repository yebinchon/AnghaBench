
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int byte ;
struct TYPE_2__ {int (* Error ) (int ,char*) ;} ;


 int ERR_DROP ;
 TYPE_1__ ri ;
 int stub1 (int ,char*) ;

__attribute__((used)) static void ResampleTexture( unsigned *in, int inwidth, int inheight, unsigned *out,
       int outwidth, int outheight ) {
 int i, j;
 unsigned *inrow, *inrow2;
 unsigned frac, fracstep;
 unsigned p1[2048], p2[2048];
 byte *pix1, *pix2, *pix3, *pix4;

 if (outwidth>2048)
  ri.Error(ERR_DROP, "ResampleTexture: max width");

 fracstep = inwidth*0x10000/outwidth;

 frac = fracstep>>2;
 for ( i=0 ; i<outwidth ; i++ ) {
  p1[i] = 4*(frac>>16);
  frac += fracstep;
 }
 frac = 3*(fracstep>>2);
 for ( i=0 ; i<outwidth ; i++ ) {
  p2[i] = 4*(frac>>16);
  frac += fracstep;
 }

 for (i=0 ; i<outheight ; i++, out += outwidth) {
  inrow = in + inwidth*(int)((i+0.25)*inheight/outheight);
  inrow2 = in + inwidth*(int)((i+0.75)*inheight/outheight);
  frac = fracstep >> 1;
  for (j=0 ; j<outwidth ; j++) {
   pix1 = (byte *)inrow + p1[j];
   pix2 = (byte *)inrow + p2[j];
   pix3 = (byte *)inrow2 + p1[j];
   pix4 = (byte *)inrow2 + p2[j];
   ((byte *)(out+j))[0] = (pix1[0] + pix2[0] + pix3[0] + pix4[0])>>2;
   ((byte *)(out+j))[1] = (pix1[1] + pix2[1] + pix3[1] + pix4[1])>>2;
   ((byte *)(out+j))[2] = (pix1[2] + pix2[2] + pix3[2] + pix4[2])>>2;
   ((byte *)(out+j))[3] = (pix1[3] + pix2[3] + pix3[3] + pix4[3])>>2;
  }
 }
}
