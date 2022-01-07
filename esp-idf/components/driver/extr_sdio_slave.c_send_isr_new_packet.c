
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int esp_err_t ;
struct TYPE_6__ {int pkt_len; } ;
typedef TYPE_1__ buf_desc_t ;
struct TYPE_7__ {TYPE_1__* in_flight_end; TYPE_1__* in_flight; } ;


 int ESP_EARLY_LOGD (int ,char*,TYPE_1__* const,TYPE_1__* const,int ) ;
 int ESP_OK ;
 int STATE_SENDING ;
 int TAG ;
 int assert (int) ;
 TYPE_3__ context ;
 int send_length_write (int ) ;
 int send_set_state (int ) ;
 int send_start_transmission (TYPE_1__* const) ;
 int send_stop_ll_operation () ;

__attribute__((used)) static inline esp_err_t send_isr_new_packet(void)
{


    buf_desc_t *const start_desc = context.in_flight;
    buf_desc_t *const end_desc = context.in_flight_end;
    assert(start_desc != ((void*)0) && end_desc != ((void*)0));

    send_stop_ll_operation();
    send_start_transmission(start_desc);


    send_length_write(end_desc->pkt_len);

    send_set_state(STATE_SENDING);

    ESP_EARLY_LOGD(TAG, "restart new send: %p->%p, pkt_len: %d", start_desc, end_desc, end_desc->pkt_len);
    return ESP_OK;
}
