
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef int BUF ;


 int IsEmptyStr (char*) ;
 int MAX_SIZE ;
 int MakeSafeLogStr (char*) ;
 int StrCat (char*,int,char*) ;
 size_t StrLen (char*) ;
 int WriteBuf (int *,char*,size_t) ;

void AddLogBufToStr(BUF *b, char *name, char *value)
{
 char tmp[MAX_SIZE * 2];
 char *p = ((void*)0);

 if (b == ((void*)0) || value == ((void*)0))
 {
  return;
 }

 if (IsEmptyStr(value))
 {
  return;
 }

 tmp[0] = 0;

 if (IsEmptyStr(name) == 0)
 {
  p = &tmp[StrLen(tmp)];
  StrCat(tmp, sizeof(tmp), name);
  MakeSafeLogStr(p);
  StrCat(tmp, sizeof(tmp), "=");
 }

 p = &tmp[StrLen(tmp)];
 StrCat(tmp, sizeof(tmp), value);
 MakeSafeLogStr(p);
 StrCat(tmp, sizeof(tmp), " ");

 WriteBuf(b, tmp, StrLen(tmp));
}
