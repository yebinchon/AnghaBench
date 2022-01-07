
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef scalar_t__ UCHAR ;
typedef int QUEUE ;


 int Free (scalar_t__*) ;
 scalar_t__ GetNext (int *) ;
 scalar_t__ IPV6_HEADER_NONE ;

UCHAR IPv6GetNextHeaderFromQueue(QUEUE *q)
{
 UINT *p;
 UCHAR v = 0;

 if (q == ((void*)0))
 {
  return IPV6_HEADER_NONE;
 }

 p = (UINT *)GetNext(q);
 if (p != ((void*)0))
 {
  v = (UCHAR)(*p);
  Free(p);
 }

 return v;
}
