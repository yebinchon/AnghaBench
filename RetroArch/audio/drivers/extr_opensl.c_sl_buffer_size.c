
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t buf_size; size_t buf_count; } ;
typedef TYPE_1__ sl_t ;



__attribute__((used)) static size_t sl_buffer_size(void *data)
{
   sl_t *sl = (sl_t*)data;
   return sl->buf_size * sl->buf_count;
}
