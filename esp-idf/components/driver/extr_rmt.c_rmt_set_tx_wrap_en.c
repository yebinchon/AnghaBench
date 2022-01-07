
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mem_tx_wrap_en; } ;
struct TYPE_4__ {TYPE_1__ apb_conf; } ;


 TYPE_2__ RMT ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int rmt_spinlock ;

__attribute__((used)) static void rmt_set_tx_wrap_en(bool en)
{
    portENTER_CRITICAL(&rmt_spinlock);
    RMT.apb_conf.mem_tx_wrap_en = en;
    portEXIT_CRITICAL(&rmt_spinlock);
}
