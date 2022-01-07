
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int rmt_reserve_memsize_t ;
struct TYPE_14__ {int pin; int tx_not_rx; int buffers; size_t channel; } ;
typedef TYPE_5__ rmt_obj_t ;
struct TYPE_11__ {int fifo_mask; } ;
struct TYPE_16__ {TYPE_4__* conf_ch; TYPE_2__ apb_conf; } ;
struct TYPE_15__ {scalar_t__ allocated; } ;
struct TYPE_12__ {int idle_out_en; int mem_owner; int mem_rd_rst; int mem_wr_rst; scalar_t__ ref_always_on; scalar_t__ idle_out_lv; scalar_t__ rx_filter_thres; scalar_t__ rx_filter_en; scalar_t__ ref_cnt_rst; scalar_t__ tx_conti_mode; scalar_t__ rx_en; } ;
struct TYPE_10__ {int div_cnt; int mem_size; int idle_thres; scalar_t__ mem_pd; scalar_t__ carrier_out_lv; scalar_t__ carrier_en; } ;
struct TYPE_13__ {TYPE_3__ conf1; TYPE_1__ conf0; } ;


 scalar_t__ ESP_INTR_FLAG_IRAM ;
 int ETS_RMT_INTR_SOURCE ;
 size_t MAX_CHANNELS ;
 TYPE_9__ RMT ;
 int RMT_MUTEX_LOCK (size_t) ;
 int RMT_MUTEX_UNLOCK (size_t) ;
 int _initPin (int,size_t,int) ;
 TYPE_5__* _rmtAllocate (int,size_t,int) ;
 int _rmt_isr ;
 int esp_intr_alloc (int ,int,int ,int *,int *) ;
 void* g_rmt_block_lock ;
 TYPE_7__* g_rmt_objects ;
 int ** g_rmt_objlocks ;
 int intr_handle ;
 scalar_t__ pdPASS ;
 int portMAX_DELAY ;
 void* xSemaphoreCreateMutex () ;
 int xSemaphoreGive (void*) ;
 scalar_t__ xSemaphoreTake (void*,int ) ;

rmt_obj_t* rmtInit(int pin, bool tx_not_rx, rmt_reserve_memsize_t memsize)
{
    int buffers = memsize;
    rmt_obj_t* rmt;
    size_t i;
    size_t j;


    if (!g_rmt_block_lock) {
        g_rmt_block_lock = xSemaphoreCreateMutex();
    }

    while (xSemaphoreTake(g_rmt_block_lock, portMAX_DELAY) != pdPASS) {}

    for (i=0; i<MAX_CHANNELS; i++) {
        for (j=0; j<buffers && i+j < MAX_CHANNELS; j++) {

            if (g_rmt_objects[i+j].allocated) {
                i += j;
                break;
            }
        }
        if (j == buffers) {

            break;
        }
    }
    if (i == MAX_CHANNELS || i+j >= MAX_CHANNELS || j != buffers) {
        xSemaphoreGive(g_rmt_block_lock);
        return ((void*)0);
    }
    rmt = _rmtAllocate(pin, i, buffers);

    xSemaphoreGive(g_rmt_block_lock);

    size_t channel = i;


    if(g_rmt_objlocks[channel] == ((void*)0)) {
        g_rmt_objlocks[channel] = xSemaphoreCreateMutex();
        if(g_rmt_objlocks[channel] == ((void*)0)) {
            return ((void*)0);
        }
    }


    RMT_MUTEX_LOCK(channel);

    rmt->pin = pin;
    rmt->tx_not_rx = tx_not_rx;
    rmt->buffers =buffers;
    rmt->channel = channel;
    _initPin(pin, channel, tx_not_rx);





    RMT.conf_ch[channel].conf0.div_cnt = 1;
    RMT.conf_ch[channel].conf0.mem_size = buffers;
    RMT.conf_ch[channel].conf0.carrier_en = 0;
    RMT.conf_ch[channel].conf0.carrier_out_lv = 0;
    RMT.conf_ch[channel].conf0.mem_pd = 0;

    RMT.conf_ch[channel].conf0.idle_thres = 0x80;
    RMT.conf_ch[channel].conf1.rx_en = 0;
    RMT.conf_ch[channel].conf1.tx_conti_mode = 0;
    RMT.conf_ch[channel].conf1.ref_cnt_rst = 0;
    RMT.conf_ch[channel].conf1.rx_filter_en = 0;
    RMT.conf_ch[channel].conf1.rx_filter_thres = 0;
    RMT.conf_ch[channel].conf1.idle_out_lv = 0;
    RMT.conf_ch[channel].conf1.idle_out_en = 1;
    RMT.conf_ch[channel].conf1.ref_always_on = 0;
    RMT.apb_conf.fifo_mask = 1;

    if (tx_not_rx) {

        RMT.conf_ch[channel].conf1.mem_owner = 0;
        RMT.conf_ch[channel].conf1.mem_rd_rst = 1;
    } else {

        RMT.conf_ch[channel].conf1.mem_owner = 1;
        RMT.conf_ch[channel].conf1.mem_wr_rst = 1;
    }


    if (!intr_handle) {
        esp_intr_alloc(ETS_RMT_INTR_SOURCE, (int)ESP_INTR_FLAG_IRAM, _rmt_isr, ((void*)0), &intr_handle);
    }
    RMT_MUTEX_UNLOCK(channel);

    return rmt;
}
