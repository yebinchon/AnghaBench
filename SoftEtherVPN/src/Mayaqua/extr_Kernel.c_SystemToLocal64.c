
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;
typedef int SYSTEMTIME ;


 int SystemToLocal (int *,int *) ;
 int SystemToUINT64 (int *) ;
 int UINT64ToSystem (int *,int ) ;

UINT64 SystemToLocal64(UINT64 t)
{
 SYSTEMTIME st;
 UINT64ToSystem(&st, t);
 SystemToLocal(&st, &st);
 return SystemToUINT64(&st);
}
