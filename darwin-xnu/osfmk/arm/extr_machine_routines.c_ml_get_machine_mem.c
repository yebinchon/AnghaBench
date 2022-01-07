
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int memory_size; } ;


 TYPE_1__ machine_info ;

unsigned int
ml_get_machine_mem(void)
{
 return (machine_info.memory_size);
}
