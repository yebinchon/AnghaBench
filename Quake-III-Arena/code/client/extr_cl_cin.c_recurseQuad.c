
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int byte ;
struct TYPE_4__ {int *** qStatus; int * linbuf; } ;
struct TYPE_3__ {long screenDelta; long xsize; long ysize; long CIN_WIDTH; long CIN_HEIGHT; long samplesPerLine; long samplesPerPixel; size_t onQuad; } ;


 long MAXSIZE ;
 long MINSIZE ;
 TYPE_2__ cin ;
 TYPE_1__* cinTable ;
 size_t currentHandle ;

__attribute__((used)) static void recurseQuad( long startX, long startY, long quadSize, long xOff, long yOff )
{
 byte *scroff;
 long bigx, bigy, lowx, lowy, useY;
 long offset;

 offset = cinTable[currentHandle].screenDelta;

 lowx = lowy = 0;
 bigx = cinTable[currentHandle].xsize;
 bigy = cinTable[currentHandle].ysize;

 if (bigx > cinTable[currentHandle].CIN_WIDTH) bigx = cinTable[currentHandle].CIN_WIDTH;
 if (bigy > cinTable[currentHandle].CIN_HEIGHT) bigy = cinTable[currentHandle].CIN_HEIGHT;

 if ( (startX >= lowx) && (startX+quadSize) <= (bigx) && (startY+quadSize) <= (bigy) && (startY >= lowy) && quadSize <= MAXSIZE) {
  useY = startY;
  scroff = cin.linbuf + (useY+((cinTable[currentHandle].CIN_HEIGHT-bigy)>>1)+yOff)*(cinTable[currentHandle].samplesPerLine) + (((startX+xOff))*cinTable[currentHandle].samplesPerPixel);

  cin.qStatus[0][cinTable[currentHandle].onQuad ] = scroff;
  cin.qStatus[1][cinTable[currentHandle].onQuad++] = scroff+offset;
 }

 if ( quadSize != MINSIZE ) {
  quadSize >>= 1;
  recurseQuad( startX, startY , quadSize, xOff, yOff );
  recurseQuad( startX+quadSize, startY , quadSize, xOff, yOff );
  recurseQuad( startX, startY+quadSize , quadSize, xOff, yOff );
  recurseQuad( startX+quadSize, startY+quadSize , quadSize, xOff, yOff );
 }
}
