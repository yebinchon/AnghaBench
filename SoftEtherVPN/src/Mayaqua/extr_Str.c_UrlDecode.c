
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t UINT ;
typedef char UCHAR ;
struct TYPE_5__ {int Buf; } ;
typedef TYPE_1__ BUF ;


 char* CopyStr (int ) ;
 int FreeBuf (TYPE_1__*) ;
 size_t HexToInt (char*) ;
 TYPE_1__* NewBuf () ;
 size_t StrLen (char*) ;
 int WriteBufChar (TYPE_1__*,char) ;

char *UrlDecode(char *url_str)
{
 UINT i, len;
 BUF *b;
 char *ret;
 if (url_str == ((void*)0))
 {
  return ((void*)0);
 }

 len = StrLen(url_str);

 b = NewBuf();

 for (i = 0;i < len;i++)
 {
  char c = url_str[i];

  if (c == '%' && ((i + 2) < len))
  {
   char hex_str[8];
   UINT value;

   hex_str[0] = url_str[i + 1];
   hex_str[1] = url_str[i + 2];
   hex_str[2] = 0;

   value = HexToInt(hex_str);

   WriteBufChar(b, (UCHAR)value);

   i += 2;
   continue;
  }
  else
  {
   if (c == '+')
   {
    c = ' ';
   }
   WriteBufChar(b, c);
  }
 }

 WriteBufChar(b, 0);

 ret = CopyStr(b->Buf);

 FreeBuf(b);

 return ret;
}
