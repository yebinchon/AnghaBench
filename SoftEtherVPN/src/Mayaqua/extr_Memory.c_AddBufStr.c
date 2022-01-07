
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BUF ;


 int StrLen (char*) ;
 int WriteBuf (int *,char*,int ) ;

void AddBufStr(BUF *b, char *str)
{

 if (b == ((void*)0) || str == ((void*)0))
 {
  return;
 }

 WriteBuf(b, str, StrLen(str));
}
