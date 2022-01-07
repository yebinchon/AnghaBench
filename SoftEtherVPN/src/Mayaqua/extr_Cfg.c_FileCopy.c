
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BUF ;


 int DumpBuf (int *,char*) ;
 int FreeBuf (int *) ;
 int * ReadDump (char*) ;
 int SeekBuf (int *,int ,int ) ;

bool FileCopy(char *src, char *dst)
{
 BUF *b;
 bool ret = 0;

 if (src == ((void*)0) || dst == ((void*)0))
 {
  return 0;
 }

 b = ReadDump(src);
 if (b == ((void*)0))
 {
  return 0;
 }

 SeekBuf(b, 0, 0);

 ret = DumpBuf(b, dst);

 FreeBuf(b);

 return ret;
}
