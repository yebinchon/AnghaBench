
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BUF ;


 int DumpBuf (int *,char*) ;
 int FreeBuf (int *) ;
 int RT_RCDATA ;
 int * ViExtractResource (char*,int ,char*) ;

bool ViExtractCabinetFile(char *exe, char *cab)
{
 BUF *b;

 if (exe == ((void*)0) || cab == ((void*)0))
 {
  return 0;
 }

 b = ViExtractResource(exe, RT_RCDATA, "CABINET");
 if (b == ((void*)0))
 {
  return 0;
 }

 if (DumpBuf(b, cab) == 0)
 {
  FreeBuf(b);

  return 0;
 }

 FreeBuf(b);

 return 1;
}
