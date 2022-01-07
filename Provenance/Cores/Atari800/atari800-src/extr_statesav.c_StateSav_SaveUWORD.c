
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;
typedef int UBYTE ;


 scalar_t__ GZWRITE (int ,int*,int) ;
 int GetGZErrorText () ;
 int StateFile ;
 scalar_t__ Z_OK ;
 scalar_t__ nFileError ;

void StateSav_SaveUWORD(const UWORD *data, int num)
{
 if (!StateFile || nFileError != Z_OK)
  return;





 while (num > 0) {
  UWORD temp;
  UBYTE byte;

  temp = *data++;
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
  num--;
 }
}
