
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int BYTE ;


 scalar_t__ GetUtf8Type (int *,scalar_t__,scalar_t__) ;
 scalar_t__ StrLen (char*) ;

UINT Utf8Len(BYTE *u, UINT size)
{
 UINT i, num;

 if (u == ((void*)0))
 {
  return 0;
 }
 if (size == 0)
 {
  size = StrLen((char *)u);
 }

 i = num = 0;
 while (1)
 {
  UINT type;

  type = GetUtf8Type(u, size, i);
  if (type == 0)
  {
   break;
  }
  i += type;
  num++;
 }

 return num;
}
