
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int OsType; } ;
typedef TYPE_1__ OS_INFO ;


 TYPE_1__* GetOsInfo () ;

UINT GetOsType()
{
 OS_INFO *i = GetOsInfo();

 if (i == ((void*)0))
 {
  return 0;
 }

 return i->OsType;
}
