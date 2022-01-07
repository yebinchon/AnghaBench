
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BUF ;


 int * NewBuf () ;
 int StartWith (char*,char*) ;
 int StrLen (char*) ;
 int * StrToBin (char*) ;
 int WriteBuf (int *,char*,int ) ;

BUF *IkeStrToPassword(char *str)
{
 BUF *b;

 if (str == ((void*)0))
 {
  return NewBuf();
 }

 if (StartWith(str, "0x") == 0)
 {

  b = NewBuf();
  WriteBuf(b, str, StrLen(str));
 }
 else
 {

  b = StrToBin(str + 2);
 }

 return b;
}
