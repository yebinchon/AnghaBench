
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int NDIS_STATUS ;


 scalar_t__ NG (int ) ;
 int NdisAllocateMemoryWithTag (void**,int,char) ;

void *NeoMalloc(UINT size)
{
 NDIS_STATUS r;
 void *p;
 if (size == 0)
 {
  size = 1;
 }


 r = NdisAllocateMemoryWithTag(&p, size, 'SETH');

 if (NG(r))
 {
  return ((void*)0);
 }
 return p;
}
