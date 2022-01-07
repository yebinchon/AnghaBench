
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_3__ {scalar_t__ dwTotalPhys; } ;
typedef TYPE_1__ MEMORYSTATUS ;


 int GlobalMemoryStatus (TYPE_1__*) ;
 scalar_t__ MEM_THRESHOLD ;
 int qfalse ;
 int qtrue ;

qboolean Sys_LowPhysicalMemory() {
 MEMORYSTATUS stat;
  GlobalMemoryStatus (&stat);
 return (stat.dwTotalPhys <= MEM_THRESHOLD) ? qtrue : qfalse;
}
