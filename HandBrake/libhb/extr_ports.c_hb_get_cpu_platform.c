
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int platform; } ;


 TYPE_1__ hb_cpu_info ;

int hb_get_cpu_platform()
{
    return hb_cpu_info.platform;
}
