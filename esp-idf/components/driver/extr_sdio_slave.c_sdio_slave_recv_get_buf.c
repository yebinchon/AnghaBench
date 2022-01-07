
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int * sdio_slave_buf_handle_t ;
struct TYPE_2__ {size_t length; int * buf; } ;
typedef TYPE_1__ buf_desc_t ;



uint8_t* sdio_slave_recv_get_buf(sdio_slave_buf_handle_t handle, size_t *len_o)
{
    buf_desc_t *desc = (buf_desc_t*)handle;
    if (handle == ((void*)0)) return ((void*)0);

    if (len_o!= ((void*)0)) *len_o= desc->length;
    return desc->buf;
}
