
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int rmt_data_mode_t ;
struct TYPE_3__ {int fifo_mask; } ;
struct TYPE_4__ {TYPE_1__ apb_conf; } ;


 TYPE_2__ RMT ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int rmt_spinlock ;

__attribute__((used)) static void rmt_set_data_mode(rmt_data_mode_t data_mode)
{
    portENTER_CRITICAL(&rmt_spinlock);
    RMT.apb_conf.fifo_mask = data_mode;
    portEXIT_CRITICAL(&rmt_spinlock);
}
