
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int line_count; scalar_t__* line; } ;
typedef TYPE_1__ slice_buffer ;


 int ff_slice_buffer_release (TYPE_1__*,int) ;

void ff_slice_buffer_flush(slice_buffer *buf)
{
    int i;

    if (!buf->line)
        return;

    for (i = 0; i < buf->line_count; i++)
        if (buf->line[i])
            ff_slice_buffer_release(buf, i);
}
