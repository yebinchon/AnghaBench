
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int utf8 ;
typedef int UCHAR ;
typedef int BUF ;


 int * NewBuf () ;
 int StrLen (int*) ;
 int UniToStr (int*,int,int *) ;
 int WriteBuf (int *,int*,int) ;

BUF *RadiusCreateUserName(wchar_t *username)
{
 BUF *b;
 UCHAR code, size;
 UCHAR utf8[254];

 if (username == ((void*)0))
 {
  return ((void*)0);
 }


 UniToStr(utf8, sizeof(utf8), username);
 utf8[253] = 0;

 b = NewBuf();
 code = 1;
 size = 2 + (UCHAR)StrLen(utf8);
 WriteBuf(b, &code, 1);
 WriteBuf(b, &size, 1);
 WriteBuf(b, utf8, StrLen(utf8));

 return b;
}
