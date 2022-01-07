
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* FreePhys; void* UsedPhys; void* TotalPhys; void* FreeMemory; void* UsedMemory; void* TotalMemory; } ;
typedef int PACK ;
typedef TYPE_1__ MEMINFO ;


 void* PackGetInt64 (int *,char*) ;
 int Zero (TYPE_1__*,int) ;

void InRpcMemInfo(MEMINFO *t, PACK *p)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(MEMINFO));
 t->TotalMemory = PackGetInt64(p, "TotalMemory");
 t->UsedMemory = PackGetInt64(p, "UsedMemory");
 t->FreeMemory = PackGetInt64(p, "FreeMemory");
 t->TotalPhys = PackGetInt64(p, "TotalPhys");
 t->UsedPhys = PackGetInt64(p, "UsedPhys");
 t->FreePhys = PackGetInt64(p, "FreePhys");
}
