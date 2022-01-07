
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int low; int range; int const* bytestream; int const* bytestream_end; int const* bytestream_start; } ;
typedef TYPE_1__ CABACContext ;


 int AVERROR_INVALIDDATA ;
 int CABAC_BITS ;

int ff_init_cabac_decoder(CABACContext *c, const uint8_t *buf, int buf_size){
    c->bytestream_start=
    c->bytestream= buf;
    c->bytestream_end= buf + buf_size;
    c->low = (*c->bytestream++)<<10;
    c->low+= ((*c->bytestream++)<<2) + 2;

    c->range= 0x1FE;
    if ((c->range<<(CABAC_BITS+1)) < c->low)
        return AVERROR_INVALIDDATA;
    return 0;
}
