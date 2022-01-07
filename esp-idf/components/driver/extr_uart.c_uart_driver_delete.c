
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uart_port_t ;
typedef int periph_module_t ;
typedef int esp_err_t ;
struct TYPE_3__ {int * tx_ring_buf; int * rx_ring_buf; int * xQueueUart; int * rx_mux; int * tx_mux; int * tx_brk_sem; int * tx_done_sem; int * tx_fifo_sem; int intr_handle; } ;


 size_t CONFIG_ESP_CONSOLE_UART_NUM ;
 int ESP_FAIL ;
 int ESP_LOGI (int ,char*) ;
 int ESP_OK ;
 int UART_CHECK (int,char*,int ) ;
 size_t UART_NUM_MAX ;
 int UART_TAG ;
 int esp_intr_free (int ) ;
 int free (TYPE_1__*) ;
 int get_periph_module (size_t) ;
 TYPE_1__** p_uart_obj ;
 int periph_module_disable (int ) ;
 int uart_disable_rx_intr (size_t) ;
 int uart_disable_tx_intr (size_t) ;
 int uart_pattern_link_free (size_t) ;
 int vQueueDelete (int *) ;
 int vRingbufferDelete (int *) ;
 int vSemaphoreDelete (int *) ;

esp_err_t uart_driver_delete(uart_port_t uart_num)
{
    UART_CHECK((uart_num < UART_NUM_MAX), "uart_num error", ESP_FAIL);
    if (p_uart_obj[uart_num] == ((void*)0)) {
        ESP_LOGI(UART_TAG, "ALREADY NULL");
        return ESP_OK;
    }
    esp_intr_free(p_uart_obj[uart_num]->intr_handle);
    uart_disable_rx_intr(uart_num);
    uart_disable_tx_intr(uart_num);
    uart_pattern_link_free(uart_num);

    if (p_uart_obj[uart_num]->tx_fifo_sem) {
        vSemaphoreDelete(p_uart_obj[uart_num]->tx_fifo_sem);
        p_uart_obj[uart_num]->tx_fifo_sem = ((void*)0);
    }
    if (p_uart_obj[uart_num]->tx_done_sem) {
        vSemaphoreDelete(p_uart_obj[uart_num]->tx_done_sem);
        p_uart_obj[uart_num]->tx_done_sem = ((void*)0);
    }
    if (p_uart_obj[uart_num]->tx_brk_sem) {
        vSemaphoreDelete(p_uart_obj[uart_num]->tx_brk_sem);
        p_uart_obj[uart_num]->tx_brk_sem = ((void*)0);
    }
    if (p_uart_obj[uart_num]->tx_mux) {
        vSemaphoreDelete(p_uart_obj[uart_num]->tx_mux);
        p_uart_obj[uart_num]->tx_mux = ((void*)0);
    }
    if (p_uart_obj[uart_num]->rx_mux) {
        vSemaphoreDelete(p_uart_obj[uart_num]->rx_mux);
        p_uart_obj[uart_num]->rx_mux = ((void*)0);
    }
    if (p_uart_obj[uart_num]->xQueueUart) {
        vQueueDelete(p_uart_obj[uart_num]->xQueueUart);
        p_uart_obj[uart_num]->xQueueUart = ((void*)0);
    }
    if (p_uart_obj[uart_num]->rx_ring_buf) {
        vRingbufferDelete(p_uart_obj[uart_num]->rx_ring_buf);
        p_uart_obj[uart_num]->rx_ring_buf = ((void*)0);
    }
    if (p_uart_obj[uart_num]->tx_ring_buf) {
        vRingbufferDelete(p_uart_obj[uart_num]->tx_ring_buf);
        p_uart_obj[uart_num]->tx_ring_buf = ((void*)0);
    }

    free(p_uart_obj[uart_num]);
    p_uart_obj[uart_num] = ((void*)0);

    if (uart_num != CONFIG_ESP_CONSOLE_UART_NUM) {
       periph_module_t periph_module = get_periph_module(uart_num);
       periph_module_disable(periph_module);
    }
    return ESP_OK;
}
