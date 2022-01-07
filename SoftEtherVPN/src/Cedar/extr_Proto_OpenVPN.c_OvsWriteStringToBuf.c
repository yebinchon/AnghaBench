
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char USHORT ;
typedef int UINT ;
typedef int BUF ;


 int Copy (char*,char*,int) ;
 char Endian16 (char) ;
 int Free (char*) ;
 int MIN (int,int) ;
 char* Malloc (int) ;
 scalar_t__ StrLen (char*) ;
 int StrSize (char*) ;
 int WriteBuf (int *,char*,int) ;

void OvsWriteStringToBuf(BUF *b, char *str, UINT max_size)
{
 USHORT us;
 UINT i;
 char *tmp;

 if (b == ((void*)0))
 {
  return;
 }
 if (str == ((void*)0))
 {
  str = "";
 }

 if (StrLen(str) == 0)
 {
  us = 0;
  WriteBuf(b, &us, sizeof(USHORT));
  return;
 }

 i = StrSize(str);
 i = MIN(i, max_size);
 us = Endian16((USHORT)i);
 WriteBuf(b, &us, sizeof(USHORT));

 tmp = Malloc(i);
 Copy(tmp, str, i);
 tmp[i - 1] = 0;
 WriteBuf(b, tmp, i);

 Free(tmp);
}
