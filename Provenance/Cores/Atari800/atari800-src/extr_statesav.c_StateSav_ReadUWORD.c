
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;
typedef int UBYTE ;


 scalar_t__ GZREAD (int ,int*,int) ;
 int GetGZErrorText () ;
 int StateFile ;
 scalar_t__ Z_OK ;
 scalar_t__ nFileError ;

void StateSav_ReadUWORD(UWORD *data, int num)
{
 if (!StateFile || nFileError != Z_OK)
  return;

 while (num > 0) {
  UBYTE byte1, byte2;

  if (GZREAD(StateFile, &byte1, 1) == 0) {
   GetGZErrorText();
   break;
  }

  if (GZREAD(StateFile, &byte2, 1) == 0) {
   GetGZErrorText();
   break;
  }

  *data++ = (byte2 << 8) | byte1;
  num--;
 }
}
