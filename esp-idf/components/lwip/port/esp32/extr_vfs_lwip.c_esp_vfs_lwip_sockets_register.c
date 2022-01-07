
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * stop_socket_select_isr; int * stop_socket_select; int * get_socket_select_semaphore; int * socket_select; int * ioctl; int * fcntl; int * read; int * close; int * fstat; int * open; int * write; int flags; } ;
typedef TYPE_1__ esp_vfs_t ;


 int ESP_ERROR_CHECK (int ) ;
 int ESP_VFS_FLAG_DEFAULT ;
 int LWIP_SOCKET_OFFSET ;
 int MAX_FDS ;
 int esp_vfs_register_fd_range (TYPE_1__*,int *,int ,int ) ;
 int lwip_close ;
 int lwip_fcntl_r_wrapper ;
 int lwip_get_socket_select_semaphore ;
 int lwip_ioctl_r_wrapper ;
 int lwip_read ;
 int lwip_select ;
 int lwip_stop_socket_select ;
 int lwip_stop_socket_select_isr ;
 int lwip_write ;

void esp_vfs_lwip_sockets_register(void)
{
    esp_vfs_t vfs = {
        .flags = ESP_VFS_FLAG_DEFAULT,
        .write = &lwip_write,
        .open = ((void*)0),
        .fstat = ((void*)0),
        .close = &lwip_close,
        .read = &lwip_read,
        .fcntl = &lwip_fcntl_r_wrapper,
        .ioctl = &lwip_ioctl_r_wrapper,
        .socket_select = &lwip_select,
        .get_socket_select_semaphore = &lwip_get_socket_select_semaphore,
        .stop_socket_select = &lwip_stop_socket_select,
        .stop_socket_select_isr = &lwip_stop_socket_select_isr,
    };





    ESP_ERROR_CHECK(esp_vfs_register_fd_range(&vfs, ((void*)0), LWIP_SOCKET_OFFSET, MAX_FDS));
}
