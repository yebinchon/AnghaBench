
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int * end; int * buffer; int * rptr; } ;
struct TYPE_4__ {TYPE_2__* fifo_buf; } ;
typedef TYPE_1__ FLACParseContext ;
typedef TYPE_2__ AVFifoBuffer ;


 int FFMIN (int,int) ;

__attribute__((used)) static uint8_t *flac_fifo_read(FLACParseContext *fpc, int offset, int *len)
{
    AVFifoBuffer *f = fpc->fifo_buf;
    uint8_t *start = f->rptr + offset;

    if (start >= f->end)
        start -= f->end - f->buffer;
    *len = FFMIN(*len, f->end - start);
    return start;
}
