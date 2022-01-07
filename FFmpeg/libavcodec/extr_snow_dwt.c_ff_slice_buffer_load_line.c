
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t data_stack_top; int ** line; int ** data_stack; } ;
typedef TYPE_1__ slice_buffer ;
typedef int IDWTELEM ;


 int av_assert0 (int) ;

IDWTELEM *ff_slice_buffer_load_line(slice_buffer *buf, int line)
{
    IDWTELEM *buffer;

    av_assert0(buf->data_stack_top >= 0);

    if (buf->line[line])
        return buf->line[line];

    buffer = buf->data_stack[buf->data_stack_top];
    buf->data_stack_top--;
    buf->line[line] = buffer;

    return buffer;
}
