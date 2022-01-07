
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int UCHAR ;
typedef int PACK ;


 int Free (int *) ;
 int HTTP_PACK_RAND_SIZE_MAX ;
 int * Malloc (int) ;
 int PackAddData (int *,char*,int *,int) ;
 int Rand (int *,int) ;
 int Rand32 () ;

void CreateDummyValue(PACK *p)
{
 UINT size;
 UCHAR *buf;

 if (p == ((void*)0))
 {
  return;
 }

 size = Rand32() % HTTP_PACK_RAND_SIZE_MAX;
 buf = Malloc(size);
 Rand(buf, size);

 PackAddData(p, "pencore", buf, size);

 Free(buf);
}
