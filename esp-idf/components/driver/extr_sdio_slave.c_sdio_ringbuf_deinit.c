
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * data; int * remain_cnt; } ;
typedef TYPE_1__ sdio_ringbuf_t ;


 TYPE_1__ SDIO_RINGBUF_INITIALIZER () ;
 int free (int *) ;
 int vSemaphoreDelete (int *) ;

__attribute__((used)) static void sdio_ringbuf_deinit(sdio_ringbuf_t* buf)
{
    if (buf->remain_cnt != ((void*)0)) vSemaphoreDelete(buf->remain_cnt);
    if (buf->data != ((void*)0)) free(buf->data);
    *buf = SDIO_RINGBUF_INITIALIZER();
}
