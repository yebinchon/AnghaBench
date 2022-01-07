
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int rmt_item32_t ;
typedef int * RingbufHandle_t ;


 int ESP_LOGI (int ,char*,int ,int ) ;
 int NEC_TAG ;
 int RMT_RX_CHANNEL ;
 int nec_parse_items (int *,size_t,int *,int *) ;
 int nec_rx_init () ;
 int rmt_get_ringbuf_handle (int,int **) ;
 int rmt_rx_start (int,int) ;
 int vRingbufferReturnItem (int *,void*) ;
 int vTaskDelete (int *) ;
 scalar_t__ xRingbufferReceive (int *,size_t*,int) ;

__attribute__((used)) static void rmt_example_nec_rx_task(void *arg)
{
    int channel = RMT_RX_CHANNEL;
    nec_rx_init();
    RingbufHandle_t rb = ((void*)0);

    rmt_get_ringbuf_handle(channel, &rb);
    rmt_rx_start(channel, 1);
    while(rb) {
        size_t rx_size = 0;



        rmt_item32_t* item = (rmt_item32_t*) xRingbufferReceive(rb, &rx_size, 1000);
        if(item) {
            uint16_t rmt_addr;
            uint16_t rmt_cmd;
            int offset = 0;
            while(1) {

                int res = nec_parse_items(item + offset, rx_size / 4 - offset, &rmt_addr, &rmt_cmd);
                if(res > 0) {
                    offset += res + 1;
                    ESP_LOGI(NEC_TAG, "RMT RCV --- addr: 0x%04x cmd: 0x%04x", rmt_addr, rmt_cmd);
                } else {
                    break;
                }
            }

            vRingbufferReturnItem(rb, (void*) item);
        } else {
            break;
        }
    }
    vTaskDelete(((void*)0));
}
