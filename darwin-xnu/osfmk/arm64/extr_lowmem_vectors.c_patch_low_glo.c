
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_2__ {scalar_t__ lgStext; } ;


 TYPE_1__ lowGlo ;
 scalar_t__ vm_kernel_stext ;

void patch_low_glo(void)
{
 lowGlo.lgStext = (uint64_t)vm_kernel_stext;
}
