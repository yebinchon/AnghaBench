
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uart_port_t ;
struct TYPE_6__ {size_t uart_num; int coll_det_flg; int queue_size; int rx_buffer_full_flg; int tx_waiting_fifo; int tx_buf_size; int intr_handle; int * uart_select_notif_callback; int * tx_ring_buf; void* rx_ring_buf; int * rx_head_ptr; scalar_t__ rx_cur_remain; int * rx_ptr; int * xQueueUart; scalar_t__ rx_buffered_len; scalar_t__ tx_waiting_brk; scalar_t__ tx_brk_len; scalar_t__ tx_brk_flg; scalar_t__ tx_len_tot; int * tx_head; int * tx_ptr; void* rx_mux; void* tx_mux; void* tx_brk_sem; void* tx_done_sem; void* tx_fifo_sem; int uart_mode; } ;
typedef TYPE_1__ uart_obj_t ;
struct TYPE_7__ {int intr_enable_mask; int txfifo_empty_intr_thresh; int rx_timeout_thresh; int rxfifo_full_thresh; } ;
typedef TYPE_2__ uart_intr_config_t ;
typedef int uart_event_t ;
typedef scalar_t__ esp_err_t ;
typedef int * QueueHandle_t ;


 scalar_t__ ESP_FAIL ;
 int ESP_INTR_FLAG_IRAM ;
 int ESP_LOGE (int ,char*) ;
 int ESP_LOGI (int ,char*,...) ;
 int ESP_LOGW (int ,char*) ;
 scalar_t__ ESP_OK ;
 int RINGBUF_TYPE_BYTEBUF ;
 int RINGBUF_TYPE_NOSPLIT ;
 int UART_BRK_DET_INT_ENA_M ;
 int UART_CHECK (int,char*,scalar_t__) ;
 int UART_EMPTY_THRESH_DEFAULT ;
 int UART_FIFO_LEN ;
 int UART_FRM_ERR_INT_ENA_M ;
 int UART_FULL_THRESH_DEFAULT ;
 int UART_MODE_UART ;
 size_t UART_NUM_MAX ;
 int UART_PARITY_ERR_INT_ENA_M ;
 int UART_PATTERN_DET_QLEN_DEFAULT ;
 int UART_RXFIFO_FULL_INT_ENA_M ;
 int UART_RXFIFO_OVF_INT_ENA_M ;
 int UART_RXFIFO_TOUT_INT_ENA_M ;
 int UART_TAG ;
 int UART_TOUT_THRESH_DEFAULT ;
 scalar_t__ calloc (int,int) ;
 TYPE_1__** p_uart_obj ;
 int uart_driver_delete (size_t) ;
 scalar_t__ uart_intr_config (size_t,TYPE_2__*) ;
 scalar_t__ uart_isr_register (size_t,int ,TYPE_1__*,int,int *) ;
 int uart_pattern_queue_reset (size_t,int ) ;
 int uart_rx_intr_handler_default ;
 int uxQueueSpacesAvailable (int *) ;
 int * xQueueCreate (int,int) ;
 void* xRingbufferCreate (int,int ) ;
 void* xSemaphoreCreateBinary () ;
 void* xSemaphoreCreateMutex () ;
 int xSemaphoreGive (void*) ;

esp_err_t uart_driver_install(uart_port_t uart_num, int rx_buffer_size, int tx_buffer_size, int queue_size, QueueHandle_t *uart_queue, int intr_alloc_flags)
{
    esp_err_t r;
    UART_CHECK((uart_num < UART_NUM_MAX), "uart_num error", ESP_FAIL);
    UART_CHECK((rx_buffer_size > UART_FIFO_LEN), "uart rx buffer length error(>128)", ESP_FAIL);
    UART_CHECK((tx_buffer_size > UART_FIFO_LEN) || (tx_buffer_size == 0), "uart tx buffer length error(>128 or 0)", ESP_FAIL);






    if ((intr_alloc_flags & ESP_INTR_FLAG_IRAM) != 0) {
        ESP_LOGW(UART_TAG, "ESP_INTR_FLAG_IRAM flag is set while CONFIG_UART_ISR_IN_IRAM is not enabled, flag updated");
        intr_alloc_flags &= ~ESP_INTR_FLAG_IRAM;
    }


    if (p_uart_obj[uart_num] == ((void*)0)) {
        p_uart_obj[uart_num] = (uart_obj_t *) calloc(1, sizeof(uart_obj_t));
        if (p_uart_obj[uart_num] == ((void*)0)) {
            ESP_LOGE(UART_TAG, "UART driver malloc error");
            return ESP_FAIL;
        }
        p_uart_obj[uart_num]->uart_num = uart_num;
        p_uart_obj[uart_num]->uart_mode = UART_MODE_UART;
        p_uart_obj[uart_num]->coll_det_flg = 0;
        p_uart_obj[uart_num]->tx_fifo_sem = xSemaphoreCreateBinary();
        xSemaphoreGive(p_uart_obj[uart_num]->tx_fifo_sem);
        p_uart_obj[uart_num]->tx_done_sem = xSemaphoreCreateBinary();
        p_uart_obj[uart_num]->tx_brk_sem = xSemaphoreCreateBinary();
        p_uart_obj[uart_num]->tx_mux = xSemaphoreCreateMutex();
        p_uart_obj[uart_num]->rx_mux = xSemaphoreCreateMutex();
        p_uart_obj[uart_num]->queue_size = queue_size;
        p_uart_obj[uart_num]->tx_ptr = ((void*)0);
        p_uart_obj[uart_num]->tx_head = ((void*)0);
        p_uart_obj[uart_num]->tx_len_tot = 0;
        p_uart_obj[uart_num]->tx_brk_flg = 0;
        p_uart_obj[uart_num]->tx_brk_len = 0;
        p_uart_obj[uart_num]->tx_waiting_brk = 0;
        p_uart_obj[uart_num]->rx_buffered_len = 0;
        uart_pattern_queue_reset(uart_num, UART_PATTERN_DET_QLEN_DEFAULT);

        if (uart_queue) {
            p_uart_obj[uart_num]->xQueueUart = xQueueCreate(queue_size, sizeof(uart_event_t));
            *uart_queue = p_uart_obj[uart_num]->xQueueUart;
            ESP_LOGI(UART_TAG, "queue free spaces: %d", uxQueueSpacesAvailable(p_uart_obj[uart_num]->xQueueUart));
        } else {
            p_uart_obj[uart_num]->xQueueUart = ((void*)0);
        }
        p_uart_obj[uart_num]->rx_buffer_full_flg = 0;
        p_uart_obj[uart_num]->tx_waiting_fifo = 0;
        p_uart_obj[uart_num]->rx_ptr = ((void*)0);
        p_uart_obj[uart_num]->rx_cur_remain = 0;
        p_uart_obj[uart_num]->rx_head_ptr = ((void*)0);
        p_uart_obj[uart_num]->rx_ring_buf = xRingbufferCreate(rx_buffer_size, RINGBUF_TYPE_BYTEBUF);
        if (tx_buffer_size > 0) {
            p_uart_obj[uart_num]->tx_ring_buf = xRingbufferCreate(tx_buffer_size, RINGBUF_TYPE_NOSPLIT);
            p_uart_obj[uart_num]->tx_buf_size = tx_buffer_size;
        } else {
            p_uart_obj[uart_num]->tx_ring_buf = ((void*)0);
            p_uart_obj[uart_num]->tx_buf_size = 0;
        }
        p_uart_obj[uart_num]->uart_select_notif_callback = ((void*)0);
    } else {
        ESP_LOGE(UART_TAG, "UART driver already installed");
        return ESP_FAIL;
    }

    r = uart_isr_register(uart_num, uart_rx_intr_handler_default, p_uart_obj[uart_num], intr_alloc_flags, &p_uart_obj[uart_num]->intr_handle);
    if (r != ESP_OK) {
        goto err;
    }
    uart_intr_config_t uart_intr = {
        .intr_enable_mask = UART_RXFIFO_FULL_INT_ENA_M
        | UART_RXFIFO_TOUT_INT_ENA_M
        | UART_FRM_ERR_INT_ENA_M
        | UART_RXFIFO_OVF_INT_ENA_M
        | UART_BRK_DET_INT_ENA_M
        | UART_PARITY_ERR_INT_ENA_M,
        .rxfifo_full_thresh = UART_FULL_THRESH_DEFAULT,
        .rx_timeout_thresh = UART_TOUT_THRESH_DEFAULT,
        .txfifo_empty_intr_thresh = UART_EMPTY_THRESH_DEFAULT
    };
    r = uart_intr_config(uart_num, &uart_intr);
    if (r != ESP_OK) {
        goto err;
    }
    return r;

err:
    uart_driver_delete(uart_num);
    return r;
}
