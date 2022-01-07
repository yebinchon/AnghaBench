
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef int UINT ;
typedef int BUF ;


 int Endian16 (int) ;
 int ReadBuf (int *,...) ;
 int StrCpy (char*,int,char*) ;

bool OvsReadStringFromBuf(BUF *b, char *str, UINT str_size)
{
 USHORT us;

 if (b == ((void*)0) || str == ((void*)0))
 {
  return 0;
 }

 if (ReadBuf(b, &us, sizeof(USHORT)) != sizeof(USHORT))
 {
  return 0;
 }

 us = Endian16(us);

 if (us == 0)
 {
  StrCpy(str, str_size, "");
  return 1;
 }

 if (us > str_size)
 {
  return 0;
 }

 if (ReadBuf(b, str, us) != us)
 {
  return 0;
 }

 if (str[us - 1] != 0)
 {
  return 0;
 }

 return 1;
}
