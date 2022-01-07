
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pending_int_irq; int pending_int_vector; int pending_level; int test_irq; } ;
typedef TYPE_1__ SH2 ;



void sh2_internal_irq(SH2 *sh2, int level, int vector)
{


 sh2->pending_int_irq = level;
 sh2->pending_int_vector = vector;
 if (level > sh2->pending_level)
  sh2->pending_level = level;

 sh2->test_irq = 1;
}
