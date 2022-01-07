
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp2 ;
typedef int tmp ;
typedef size_t UINT ;
typedef scalar_t__ UCHAR ;
typedef int BUF ;


 int * NewBuf () ;
 int StrCat (char*,int,char*) ;
 int StrCpy (char*,int,char*) ;
 size_t StrLen (char*) ;
 char ToUpper (char) ;
 int WriteBuf (int *,scalar_t__*,int) ;
 int Zero (char*,int) ;
 scalar_t__ strtoul (char*,int *,int ) ;

BUF *StrToBin(char *str)
{
 BUF *b;
 UINT len, i;
 char tmp[3];

 if (str == ((void*)0))
 {
  return ((void*)0);
 }

 len = StrLen(str);
 tmp[0] = 0;
 b = NewBuf();
 for (i = 0;i < len;i++)
 {
  char c = str[i];
  c = ToUpper(c);
  if (('0' <= c && c <= '9') || ('A' <= c && c <= 'F'))
  {
   if (tmp[0] == 0)
   {
    tmp[0] = c;
    tmp[1] = 0;
   }
   else if (tmp[1] == 0)
   {
    UCHAR data;
    char tmp2[64];
    tmp[1] = c;
    tmp[2] = 0;
    StrCpy(tmp2, sizeof(tmp2), "0x");
    StrCat(tmp2, sizeof(tmp2), tmp);
    data = (UCHAR)strtoul(tmp2, ((void*)0), 0);
    WriteBuf(b, &data, 1);
    Zero(tmp, sizeof(tmp));
   }
  }
  else if (c == ' ' || c == ',' || c == '-' || c == ':')
  {

  }
  else
  {
   break;
  }
 }

 return b;
}
