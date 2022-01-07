
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int esp_line_endings_t ;
struct TYPE_2__ {int tx_mode; } ;


 int UART_NUM ;
 TYPE_1__** s_ctx ;

void esp_vfs_dev_uart_set_tx_line_endings(esp_line_endings_t mode)
{
    for (int i = 0; i < UART_NUM; ++i) {
        s_ctx[i]->tx_mode = mode;
    }
}
