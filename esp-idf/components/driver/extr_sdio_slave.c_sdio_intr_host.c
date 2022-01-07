
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ portBASE_TYPE ;
struct TYPE_7__ {int val; } ;
struct TYPE_6__ {int val; } ;
struct TYPE_10__ {TYPE_2__ slc0_int_clr; TYPE_1__ slc0_int_st; } ;
struct TYPE_8__ {int (* event_cb ) (int) ;} ;
struct TYPE_9__ {int * events; TYPE_3__ config; } ;


 int BIT (int) ;
 TYPE_5__ SLC ;
 TYPE_4__ context ;
 scalar_t__ pdFALSE ;
 int portYIELD_FROM_ISR () ;
 int stub1 (int) ;
 int xSemaphoreGiveFromISR (int ,scalar_t__*) ;

__attribute__((used)) static void sdio_intr_host(void* arg)
{
    uint8_t int_val = SLC.slc0_int_st.val & 0xff;

    portBASE_TYPE yield = pdFALSE;
    SLC.slc0_int_clr.val = int_val;
    for(int i = 0; i < 8; i++) {
        if (BIT(i) & int_val) {
            if (context.config.event_cb != ((void*)0)) (*context.config.event_cb)(i);
            xSemaphoreGiveFromISR(context.events[i], &yield);
        }
    }
    if (yield) portYIELD_FROM_ISR();
}
