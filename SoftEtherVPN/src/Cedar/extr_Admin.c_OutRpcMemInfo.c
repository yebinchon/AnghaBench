
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int FreePhys; int UsedPhys; int TotalPhys; int FreeMemory; int UsedMemory; int TotalMemory; } ;
typedef int PACK ;
typedef TYPE_1__ MEMINFO ;


 int PackAddInt64 (int *,char*,int ) ;

void OutRpcMemInfo(PACK *p, MEMINFO *t)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddInt64(p, "TotalMemory", t->TotalMemory);
 PackAddInt64(p, "UsedMemory", t->UsedMemory);
 PackAddInt64(p, "FreeMemory", t->FreeMemory);
 PackAddInt64(p, "TotalPhys", t->TotalPhys);
 PackAddInt64(p, "UsedPhys", t->UsedPhys);
 PackAddInt64(p, "FreePhys", t->FreePhys);
}
