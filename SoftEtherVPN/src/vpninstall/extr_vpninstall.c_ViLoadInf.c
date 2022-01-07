
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VI_SETTING ;
typedef int BUF ;


 int FreeBuf (int *) ;
 int * ReadDump (char*) ;
 int ViLoadInfFromBuf (int *,int *) ;

bool ViLoadInf(VI_SETTING *set, char *filename)
{
 BUF *b;
 bool ret = 0;

 if (set == ((void*)0) || filename == ((void*)0))
 {
  return 0;
 }

 b = ReadDump(filename);
 if (b == ((void*)0))
 {
  return 0;
 }

 ret = ViLoadInfFromBuf(set, b);

 FreeBuf(b);

 return ret;
}
