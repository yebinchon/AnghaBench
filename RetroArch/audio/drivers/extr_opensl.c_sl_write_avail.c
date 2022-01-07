
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buf_count; int buf_size; scalar_t__ buffer_ptr; scalar_t__ buffered_blocks; } ;
typedef TYPE_1__ sl_t ;



__attribute__((used)) static size_t sl_write_avail(void *data)
{
   sl_t *sl = (sl_t*)data;
   size_t avail = (sl->buf_count - (int)sl->buffered_blocks - 1) * sl->buf_size + (sl->buf_size - (int)sl->buffer_ptr);
   return avail;
}
