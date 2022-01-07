
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* processor_t ;
typedef int processor_set_t ;
struct TYPE_3__ {int processor_set; } ;



processor_set_t
processor_pset(
 processor_t processor)
{
 return (processor->processor_set);
}
