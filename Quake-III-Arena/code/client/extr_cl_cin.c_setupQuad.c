
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int byte ;
struct TYPE_4__ {long oldXOff; long oldYOff; int oldysize; int oldxsize; int *** qStatus; } ;
struct TYPE_3__ {int ysize; int xsize; int CIN_WIDTH; int CIN_HEIGHT; scalar_t__ onQuad; } ;


 TYPE_2__ cin ;
 TYPE_1__* cinTable ;
 size_t currentHandle ;
 int recurseQuad (long,long,int,long,long) ;

__attribute__((used)) static void setupQuad( long xOff, long yOff )
{
 long numQuadCels, i,x,y;
 byte *temp;

 if (xOff == cin.oldXOff && yOff == cin.oldYOff && cinTable[currentHandle].ysize == cin.oldysize && cinTable[currentHandle].xsize == cin.oldxsize) {
  return;
 }

 cin.oldXOff = xOff;
 cin.oldYOff = yOff;
 cin.oldysize = cinTable[currentHandle].ysize;
 cin.oldxsize = cinTable[currentHandle].xsize;

 numQuadCels = (cinTable[currentHandle].CIN_WIDTH*cinTable[currentHandle].CIN_HEIGHT) / (16);
 numQuadCels += numQuadCels/4 + numQuadCels/16;
 numQuadCels += 64;

 numQuadCels = (cinTable[currentHandle].xsize*cinTable[currentHandle].ysize) / (16);
 numQuadCels += numQuadCels/4;
 numQuadCels += 64;

 cinTable[currentHandle].onQuad = 0;

 for(y=0;y<(long)cinTable[currentHandle].ysize;y+=16)
  for(x=0;x<(long)cinTable[currentHandle].xsize;x+=16)
   recurseQuad( x, y, 16, xOff, yOff );

 temp = ((void*)0);

 for(i=(numQuadCels-64);i<numQuadCels;i++) {
  cin.qStatus[0][i] = temp;
  cin.qStatus[1][i] = temp;
 }
}
