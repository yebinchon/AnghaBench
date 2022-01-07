
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct TYPE_5__ {scalar_t__ seqno; int flags; scalar_t__ count; scalar_t__ sock; struct TYPE_5__* packet_hdr; int cb_args; int (* on_ping_end ) (int ,int ) ;int interval_ms; int (* on_ping_timeout ) (int ,int ) ;int (* on_ping_success ) (int ,int ) ;scalar_t__ elapsed_time_ms; scalar_t__ total_time_ms; scalar_t__ received; scalar_t__ transmitted; } ;
typedef TYPE_1__ esp_ping_t ;
typedef int esp_ping_handle_t ;
typedef int TickType_t ;


 int PING_CHECK_START_TIMEOUT_MS ;
 int PING_FLAGS_INIT ;
 int PING_FLAGS_START ;
 scalar_t__ PING_TIME_DIFF_MS (struct timeval,struct timeval) ;
 int close (scalar_t__) ;
 int esp_ping_receive (TYPE_1__*) ;
 int esp_ping_send (TYPE_1__*) ;
 int free (TYPE_1__*) ;
 int gettimeofday (struct timeval*,int *) ;
 int pdMS_TO_TICKS (int ) ;
 int pdTRUE ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;
 int stub3 (int ,int ) ;
 scalar_t__ ulTaskNotifyTake (int ,int ) ;
 int vTaskDelayUntil (int *,int ) ;
 int vTaskDelete (int *) ;
 int xTaskGetTickCount () ;

__attribute__((used)) static void esp_ping_thread(void *args)
{
    esp_ping_t *ep = (esp_ping_t *)(args);
    TickType_t last_wake;
    struct timeval start_time, end_time;
    int recv_ret;

    while (1) {

        if (ulTaskNotifyTake(pdTRUE, pdMS_TO_TICKS(PING_CHECK_START_TIMEOUT_MS))) {

            ep->packet_hdr->seqno = 0;
            ep->transmitted = 0;
            ep->received = 0;
            ep->total_time_ms = 0;

            last_wake = xTaskGetTickCount();
            while ((ep->flags & PING_FLAGS_START) && ((ep->count == 0) || (ep->packet_hdr->seqno < ep->count))) {
                esp_ping_send(ep);
                gettimeofday(&start_time, ((void*)0));
                recv_ret = esp_ping_receive(ep);
                gettimeofday(&end_time, ((void*)0));
                ep->elapsed_time_ms = PING_TIME_DIFF_MS(end_time, start_time);
                ep->total_time_ms += ep->elapsed_time_ms;
                if (recv_ret >= 0) {
                    if (ep->on_ping_success) {
                        ep->on_ping_success((esp_ping_handle_t)ep, ep->cb_args);
                    }
                } else {
                    if (ep->on_ping_timeout) {
                        ep->on_ping_timeout((esp_ping_handle_t)ep, ep->cb_args);
                    }
                }
                vTaskDelayUntil(&last_wake, pdMS_TO_TICKS(ep->interval_ms));
            }

            if (ep->on_ping_end) {
                ep->on_ping_end((esp_ping_handle_t)ep, ep->cb_args);
            }
        } else {

            if (!(ep->flags & PING_FLAGS_INIT)) {
                break;
            }
        }
    }

    if (ep->packet_hdr) {
        free(ep->packet_hdr);
    }
    if (ep->sock > 0) {
        close(ep->sock);
    }
    free(ep);
    vTaskDelete(((void*)0));
}
