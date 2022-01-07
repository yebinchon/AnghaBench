
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PACK ;
typedef int BUF ;


 int AddDynList (int *) ;
 int FreeBuf (int *) ;
 int * PackGetBuf (int *,char*) ;

void ExtractAndApplyDynList(PACK *p)
{
 BUF *b;

 if (p == ((void*)0))
 {
  return;
 }

 b = PackGetBuf(p, "DynList");
 if (b == ((void*)0))
 {
  return;
 }

 AddDynList(b);

 FreeBuf(b);
}
