
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef int UINT64 ;
typedef int SYSTEMTIME ;


 int SystemToDosDate (int *) ;
 int UINT64ToSystem (int *,int ) ;

USHORT System64ToDosDate(UINT64 i)
{
 SYSTEMTIME st;
 UINT64ToSystem(&st, i);
 return SystemToDosDate(&st);
}
