
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t size; int brk_len; } ;
struct TYPE_5__ {int type; TYPE_1__ tx_data; } ;
typedef TYPE_2__ uart_tx_data_t ;
typedef size_t uart_port_t ;
typedef int portTickType ;
struct TYPE_6__ {int coll_det_flg; scalar_t__ tx_buf_size; int tx_waiting_fifo; int tx_mux; int tx_fifo_sem; int tx_brk_sem; int tx_ring_buf; } ;


 int UART_DATA ;
 int UART_DATA_BREAK ;
 int UART_EMPTY_THRESH_DEFAULT ;
 TYPE_3__** p_uart_obj ;
 scalar_t__ pdTRUE ;
 scalar_t__ portMAX_DELAY ;
 int uart_enable_tx_intr (size_t,int,int ) ;
 size_t uart_fill_fifo (size_t,char*,size_t) ;
 int uart_set_break (size_t,int) ;
 int xRingbufferGetMaxItemSize (int ) ;
 int xRingbufferSend (int ,void*,int,scalar_t__) ;
 int xSemaphoreGive (int ) ;
 scalar_t__ xSemaphoreTake (int ,int ) ;

__attribute__((used)) static int uart_tx_all(uart_port_t uart_num, const char *src, size_t size, bool brk_en, int brk_len)
{
    if (size == 0) {
        return 0;
    }
    size_t original_size = size;


    xSemaphoreTake(p_uart_obj[uart_num]->tx_mux, (portTickType)portMAX_DELAY);
    p_uart_obj[uart_num]->coll_det_flg = 0;
    if (p_uart_obj[uart_num]->tx_buf_size > 0) {
        int max_size = xRingbufferGetMaxItemSize(p_uart_obj[uart_num]->tx_ring_buf);
        int offset = 0;
        uart_tx_data_t evt;
        evt.tx_data.size = size;
        evt.tx_data.brk_len = brk_len;
        if (brk_en) {
            evt.type = UART_DATA_BREAK;
        } else {
            evt.type = UART_DATA;
        }
        xRingbufferSend(p_uart_obj[uart_num]->tx_ring_buf, (void *) &evt, sizeof(uart_tx_data_t), portMAX_DELAY);
        while (size > 0) {
            int send_size = size > max_size / 2 ? max_size / 2 : size;
            xRingbufferSend(p_uart_obj[uart_num]->tx_ring_buf, (void *) (src + offset), send_size, portMAX_DELAY);
            size -= send_size;
            offset += send_size;
            uart_enable_tx_intr(uart_num, 1, UART_EMPTY_THRESH_DEFAULT);
        }
    } else {
        while (size) {

            if (pdTRUE == xSemaphoreTake(p_uart_obj[uart_num]->tx_fifo_sem, (portTickType)portMAX_DELAY)) {
                size_t sent = uart_fill_fifo(uart_num, (char *) src, size);
                if (sent < size) {
                    p_uart_obj[uart_num]->tx_waiting_fifo = 1;
                    uart_enable_tx_intr(uart_num, 1, UART_EMPTY_THRESH_DEFAULT);
                }
                size -= sent;
                src += sent;
            }
        }
        if (brk_en) {
            uart_set_break(uart_num, brk_len);
            xSemaphoreTake(p_uart_obj[uart_num]->tx_brk_sem, (portTickType)portMAX_DELAY);
        }
        xSemaphoreGive(p_uart_obj[uart_num]->tx_fifo_sem);
    }
    xSemaphoreGive(p_uart_obj[uart_num]->tx_mux);
    return original_size;
}
