
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ portBASE_TYPE ;
struct TYPE_8__ {int rx_eof; } ;
struct TYPE_7__ {scalar_t__ rx_eof; scalar_t__ rx_done; } ;
struct TYPE_6__ {scalar_t__ rx_done; } ;
struct TYPE_10__ {TYPE_3__ slc0_int_clr; TYPE_2__ slc0_int_st; TYPE_1__ slc0_int_ena; } ;
struct TYPE_9__ {int * in_flight; } ;


 int ESP_EARLY_LOGV (int ,char*) ;
 TYPE_5__ SLC ;
 scalar_t__ STATE_SENDING ;
 scalar_t__ STATE_WAIT_FOR_START ;
 int TAG ;
 int assert (int) ;
 TYPE_4__ context ;
 scalar_t__ pdFALSE ;
 int portYIELD_FROM_ISR () ;
 scalar_t__ send_get_state () ;
 int send_isr_check_new_pkt (scalar_t__*) ;
 int send_isr_eof (scalar_t__*) ;
 int send_isr_new_packet () ;

__attribute__((used)) static void sdio_intr_send(void* arg)
{
    ESP_EARLY_LOGV(TAG, "intr_send");
    portBASE_TYPE yield = pdFALSE;


    if (SLC.slc0_int_st.rx_done) SLC.slc0_int_ena.rx_done = 0;



    if (SLC.slc0_int_st.rx_eof) {
        SLC.slc0_int_clr.rx_eof = 1;

        assert(send_get_state() == STATE_SENDING);
        send_isr_eof(&yield);
    }



    if (send_get_state() == STATE_WAIT_FOR_START) {
        if (context.in_flight == ((void*)0)) send_isr_check_new_pkt(&yield);

        if (context.in_flight) send_isr_new_packet();
    }

    if (yield) portYIELD_FROM_ISR();
}
