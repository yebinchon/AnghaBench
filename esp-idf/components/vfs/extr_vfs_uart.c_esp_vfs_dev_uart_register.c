
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * tcflush; int * tcdrain; int * tcgetattr; int * tcsetattr; int * end_select; int * start_select; int * access; int * fsync; int * fcntl; int * read; int * close; int * fstat; int * open; int * write; int flags; } ;
typedef TYPE_1__ esp_vfs_t ;


 int ESP_ERROR_CHECK (int ) ;
 int ESP_VFS_FLAG_DEFAULT ;
 int esp_vfs_register (char*,TYPE_1__*,int *) ;
 int uart_access ;
 int uart_close ;
 int uart_end_select ;
 int uart_fcntl ;
 int uart_fstat ;
 int uart_fsync ;
 int uart_open ;
 int uart_read ;
 int uart_start_select ;
 int uart_tcdrain ;
 int uart_tcflush ;
 int uart_tcgetattr ;
 int uart_tcsetattr ;
 int uart_write ;

void esp_vfs_dev_uart_register(void)
{
    esp_vfs_t vfs = {
        .flags = ESP_VFS_FLAG_DEFAULT,
        .write = &uart_write,
        .open = &uart_open,
        .fstat = &uart_fstat,
        .close = &uart_close,
        .read = &uart_read,
        .fcntl = &uart_fcntl,
        .fsync = &uart_fsync,
        .access = &uart_access,
        .start_select = &uart_start_select,
        .end_select = &uart_end_select,






    };
    ESP_ERROR_CHECK(esp_vfs_register("/dev/uart", &vfs, ((void*)0)));
}
