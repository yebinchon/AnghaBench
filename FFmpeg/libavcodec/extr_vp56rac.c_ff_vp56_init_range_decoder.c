
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int high; int bits; int const* buffer; int code_word; scalar_t__ end_reached; int const* end; } ;
typedef TYPE_1__ VP56RangeCoder ;


 int AVERROR_INVALIDDATA ;
 int bytestream_get_be24 (int const**) ;

int ff_vp56_init_range_decoder(VP56RangeCoder *c, const uint8_t *buf, int buf_size)
{
    c->high = 255;
    c->bits = -16;
    c->buffer = buf;
    c->end = buf + buf_size;
    c->end_reached = 0;
    if (buf_size < 1)
        return AVERROR_INVALIDDATA;
    c->code_word = bytestream_get_be24(&c->buffer);
    return 0;
}
