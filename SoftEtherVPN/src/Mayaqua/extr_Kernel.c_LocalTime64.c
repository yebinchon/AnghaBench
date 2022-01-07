
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;
typedef int SYSTEMTIME ;


 int LocalTime (int *) ;
 int SystemToUINT64 (int *) ;

UINT64 LocalTime64()
{
 SYSTEMTIME s;
 LocalTime(&s);
 return SystemToUINT64(&s);
}
