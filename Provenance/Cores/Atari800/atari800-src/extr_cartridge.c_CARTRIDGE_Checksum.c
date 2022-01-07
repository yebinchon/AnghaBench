
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;



int CARTRIDGE_Checksum(const UBYTE *image, int nbytes)
{
 int checksum = 0;
 while (nbytes > 0) {
  checksum += *image++;
  nbytes--;
 }
 return checksum;
}
