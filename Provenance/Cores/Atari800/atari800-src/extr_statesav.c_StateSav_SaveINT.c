
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int UBYTE ;


 scalar_t__ GZWRITE (int ,unsigned int*,int) ;
 int GetGZErrorText () ;
 int StateFile ;
 scalar_t__ Z_OK ;
 scalar_t__ nFileError ;

void StateSav_SaveINT(const int *data, int num)
{
 if (!StateFile || nFileError != Z_OK)
  return;





 while (num > 0) {
  UBYTE signbit = 0;
  unsigned int temp;
  UBYTE byte;
  int temp0;

  temp0 = *data++;
  if (temp0 < 0) {
   temp0 = -temp0;
   signbit = 0x80;
  }
  temp = (unsigned int) temp0;

  byte = temp & 0xff;
  if (GZWRITE(StateFile, &byte, 1) == 0) {
   GetGZErrorText();
   break;
  }

  temp >>= 8;
  byte = temp & 0xff;
  if (GZWRITE(StateFile, &byte, 1) == 0) {
   GetGZErrorText();
   break;
  }

  temp >>= 8;
  byte = temp & 0xff;
  if (GZWRITE(StateFile, &byte, 1) == 0) {
   GetGZErrorText();
   break;
  }

  temp >>= 8;
  byte = (temp & 0x7f) | signbit;
  if (GZWRITE(StateFile, &byte, 1) == 0) {
   GetGZErrorText();
   break;
  }

  num--;
 }
}
