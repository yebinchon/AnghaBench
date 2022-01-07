
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mt_cpu {int dummy; } ;
struct TYPE_2__ {struct mt_cpu cpu_monotonic; } ;


 TYPE_1__* current_cpu_datap () ;

struct mt_cpu *
mt_cur_cpu(void)
{
 return &current_cpu_datap()->cpu_monotonic;
}
