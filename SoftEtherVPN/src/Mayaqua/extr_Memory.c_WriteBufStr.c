
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int BUF ;


 scalar_t__ StrLen (char*) ;
 int WriteBuf (int *,char*,scalar_t__) ;
 int WriteBufInt (int *,scalar_t__) ;

bool WriteBufStr(BUF *b, char *str)
{
 UINT len;

 if (b == ((void*)0) || str == ((void*)0))
 {
  return 0;
 }


 len = StrLen(str);
 if (WriteBufInt(b, len + 1) == 0)
 {
  return 0;
 }


 WriteBuf(b, str, len);

 return 1;
}
