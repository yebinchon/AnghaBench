
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int BUF ;


 int CiTryToParseAccount (int *) ;
 int FreeBuf (int *) ;
 int * ReadDumpW (int *) ;

bool CiTryToParseAccountFile(wchar_t *name)
{
 bool ret;
 BUF *b;

 if (name == ((void*)0))
 {
  return 0;
 }

 b = ReadDumpW(name);
 if (b == ((void*)0))
 {
  return 0;
 }

 ret = CiTryToParseAccount(b);

 FreeBuf(b);

 return ret;
}
