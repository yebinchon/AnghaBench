
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int stackaddr ;
struct TYPE_5__ {int cputype; int cpusubtype; } ;
struct TYPE_4__ {char* name; char* description; } ;
typedef TYPE_1__ NXArchInfo ;


 int CPU_SUBTYPE_MASK ;
 TYPE_1__* NXGetArchInfoFromCpuType (int,int) ;
 TYPE_2__ _mh_execute_header ;
 int err (int,char*) ;
 int printf (char*,int,...) ;
 int sysctlbyname (char*,int *,size_t*,int *,int ) ;

void printexecinfo(void)
{
 int ret;
 uint64_t stackaddr;
 size_t len = sizeof(stackaddr);
 const NXArchInfo *arch = NXGetArchInfoFromCpuType(_mh_execute_header.cputype, _mh_execute_header.cpusubtype & ~CPU_SUBTYPE_MASK);

 printf("executable load address = 0x%016llx\n", (uint64_t)(uintptr_t)&_mh_execute_header);
 printf("executable cputype 0x%08x cpusubtype 0x%08x (%s:%s)\n",
     _mh_execute_header.cputype,
     _mh_execute_header.cpusubtype,
     arch ? arch->name : "unknown",
     arch ? arch->description : "unknown");

 ret = sysctlbyname("kern.usrstack64", &stackaddr, &len, ((void*)0), 0);
 if (ret == -1)
  err(1, "sysctlbyname");

 printf("          stack address = 0x%016llx\n", stackaddr);
}
