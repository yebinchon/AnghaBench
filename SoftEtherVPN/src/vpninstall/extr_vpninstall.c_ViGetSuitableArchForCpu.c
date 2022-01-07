
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VI_SETTING_ARCH ;
struct TYPE_2__ {int x86; } ;


 TYPE_1__ setting ;

VI_SETTING_ARCH *ViGetSuitableArchForCpu()
{
 return &setting.x86;
}
