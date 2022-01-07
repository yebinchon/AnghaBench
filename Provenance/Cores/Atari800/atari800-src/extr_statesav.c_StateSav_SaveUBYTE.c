
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 scalar_t__ GZWRITE (int ,int const*,int) ;
 int GetGZErrorText () ;
 int StateFile ;
 scalar_t__ Z_OK ;
 scalar_t__ nFileError ;

void StateSav_SaveUBYTE(const UBYTE *data, int num)
{
 if (!StateFile || nFileError != Z_OK)
  return;





 if (GZWRITE(StateFile, data, num) == 0)
  GetGZErrorText();
}
