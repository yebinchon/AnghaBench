
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char UCHAR ;
typedef int BUF ;


 int * NewBuf () ;
 int StrLen (char*) ;
 int WriteBuf (int *,char*,int) ;

BUF *RadiusCreateNasId(char *name)
{
 BUF *b;
 UCHAR code, size;

 if (name == ((void*)0))
 {
  return ((void*)0);
 }
 if (StrLen(name) == 0 || StrLen(name) >= 128)
 {
  return ((void*)0);
 }

 b = NewBuf();
 code = 32;
 size = 2 + (UCHAR)StrLen(name);
 WriteBuf(b, &code, 1);
 WriteBuf(b, &size, 1);
 WriteBuf(b, name, StrLen(name));

 return b;
}
