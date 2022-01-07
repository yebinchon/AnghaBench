
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int val; } ;
struct TYPE_4__ {TYPE_1__ int_ena; } ;


 TYPE_2__ RMT ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int rmt_spinlock ;

void rmt_clr_intr_enable_mask(uint32_t mask)
{
    portENTER_CRITICAL(&rmt_spinlock);
    RMT.int_ena.val &= (~mask);
    portEXIT_CRITICAL(&rmt_spinlock);
}
