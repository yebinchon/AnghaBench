
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;
typedef int SYSTEMTIME ;


 int Asn1TimeToSystem (int *,void*) ;
 int SystemToUINT64 (int *) ;

UINT64 Asn1TimeToUINT64(void *asn1_time)
{
 SYSTEMTIME st;

 if (asn1_time == ((void*)0))
 {
  return 0;
 }

 if (Asn1TimeToSystem(&st, asn1_time) == 0)
 {
  return 0;
 }
 return SystemToUINT64(&st);
}
