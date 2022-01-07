
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int type; int use_asm; } ;
typedef TYPE_1__ FLAC__CPUInfo ;



 int FLAC__CPUINFO_TYPE_UNKNOWN ;

 int ia32_cpu_info (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 int x86_64_cpu_info (TYPE_1__*) ;

void FLAC__cpu_info (FLAC__CPUInfo *info)
{
 memset(info, 0, sizeof(*info));






 info->type = FLAC__CPUINFO_TYPE_UNKNOWN;
 info->use_asm = 0;


 switch (info->type) {
 case 129:
  ia32_cpu_info (info);
  break;
 case 128:
  x86_64_cpu_info (info);
  break;
 default:
  info->use_asm = 0;
  break;
 }
}
