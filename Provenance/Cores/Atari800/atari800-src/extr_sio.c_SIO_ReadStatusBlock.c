
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 scalar_t__ SIO_OFF ;
 scalar_t__* SIO_drive_status ;
 int* sectorcount ;
 int* sectorsize ;

int SIO_ReadStatusBlock(int unit, UBYTE *buffer)
{
 UBYTE tracks;
 UBYTE heads;
 int spt;
 if (SIO_drive_status[unit] == SIO_OFF)
  return 0;

 tracks = 1;
 heads = 1;
 spt = sectorcount[unit];

 if (spt % 40 == 0) {

  tracks = 40;
  spt /= 40;
  if (spt > 26 && spt % 2 == 0) {

   heads = 2;
   spt >>= 1;
   if (spt > 26 && spt % 2 == 0) {

    tracks = 80;
    spt >>= 1;
   }
  }
 }

 buffer[0] = tracks;
 buffer[1] = 1;
 buffer[2] = (UBYTE) (spt >> 8);
 buffer[3] = (UBYTE) spt;
 buffer[4] = (UBYTE) (heads - 1);

 buffer[5] = (sectorsize[unit] == 128 && sectorcount[unit] <= 720) ? 0 : 4;
 buffer[6] = (UBYTE) (sectorsize[unit] >> 8);
 buffer[7] = (UBYTE) sectorsize[unit];
 buffer[8] = 1;
 buffer[9] = 192;
 buffer[10] = 0;
 buffer[11] = 0;
 return 'C';
}
