
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef size_t uart_port_t ;
typedef int esp_err_t ;


 int ESP_FAIL ;
 int ESP_OK ;
 int SET_PERI_REG_MASK (int ,int ) ;
 int UART_CHECK (int,char*,int ) ;
 int UART_ENTER_CRITICAL (int *) ;
 int UART_EXIT_CRITICAL (int *) ;
 int UART_INT_CLR_REG (size_t) ;
 int UART_INT_ENA_REG (size_t) ;
 size_t UART_NUM_MAX ;
 int * uart_spinlock ;

esp_err_t uart_enable_intr_mask(uart_port_t uart_num, uint32_t enable_mask)
{
    UART_CHECK((uart_num < UART_NUM_MAX), "uart_num error", ESP_FAIL);
    UART_ENTER_CRITICAL(&uart_spinlock[uart_num]);
    SET_PERI_REG_MASK(UART_INT_CLR_REG(uart_num), enable_mask);
    SET_PERI_REG_MASK(UART_INT_ENA_REG(uart_num), enable_mask);
    UART_EXIT_CRITICAL(&uart_spinlock[uart_num]);
    return ESP_OK;
}
