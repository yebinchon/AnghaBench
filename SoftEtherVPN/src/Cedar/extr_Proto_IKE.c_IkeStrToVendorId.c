
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int hash ;
typedef int UCHAR ;
struct TYPE_6__ {scalar_t__ Size; } ;
typedef TYPE_1__ BUF ;


 int FreeBuf (TYPE_1__*) ;
 scalar_t__ IsEmptyStr (char*) ;
 int MD5_SIZE ;
 int Md5 (int *,char*,int ) ;
 TYPE_1__* MemToBuf (int *,int) ;
 scalar_t__ StartWith (char*,char*) ;
 int StrLen (char*) ;
 TYPE_1__* StrToBin (char*) ;

BUF *IkeStrToVendorId(char *str)
{

 if (IsEmptyStr(str))
 {
  return ((void*)0);
 }

 if (StartWith(str, "0x"))
 {
  BUF *buf = StrToBin(str + 2);

  if (buf == ((void*)0) || buf->Size == 0)
  {
   FreeBuf(buf);
   return ((void*)0);
  }

  return buf;
 }
 else
 {
  BUF *buf;
  UCHAR hash[MD5_SIZE];

  Md5(hash, str, StrLen(str));

  buf = MemToBuf(hash, sizeof(hash));

  return buf;
 }
}
