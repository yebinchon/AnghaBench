
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* str; unsigned int size; unsigned int size_max; scalar_t__ len; } ;
typedef TYPE_1__ AVBPrint ;



void av_bprint_init_for_buffer(AVBPrint *buf, char *buffer, unsigned size)
{
    buf->str = buffer;
    buf->len = 0;
    buf->size = size;
    buf->size_max = size;
    *buf->str = 0;
}
