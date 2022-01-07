
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int UCHAR ;



void XorData(void *dst, void *src1, void *src2, UINT size)
{
 UINT i;
 UCHAR *d, *c1, *c2;

 if (dst == ((void*)0) || src1 == ((void*)0) || src2 == ((void*)0) || size == 0)
 {
  return;
 }

 d = (UCHAR *)dst;
 c1 = (UCHAR *)src1;
 c2 = (UCHAR *)src2;

 for (i = 0;i < size;i++)
 {
  *d = (*c1) ^ (*c2);

  d++;
  c1++;
  c2++;
 }
}
