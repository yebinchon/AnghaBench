
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;
typedef int SYSTEMTIME ;


 int SystemToAsn1Time (void*,int *) ;
 int UINT64ToSystem (int *,int ) ;

bool UINT64ToAsn1Time(void *asn1_time, UINT64 t)
{
 SYSTEMTIME st;

 if (asn1_time == ((void*)0))
 {
  return 0;
 }

 UINT64ToSystem(&st, t);
 return SystemToAsn1Time(asn1_time, &st);
}
