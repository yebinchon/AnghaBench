
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int bit_left; } ;
struct TYPE_4__ {int range; TYPE_2__ pb; scalar_t__ outstanding_count; scalar_t__ low; } ;
typedef TYPE_1__ CABACContext ;


 int init_put_bits (TYPE_2__*,int *,int) ;

void ff_init_cabac_encoder(CABACContext *c, uint8_t *buf, int buf_size){
    init_put_bits(&c->pb, buf, buf_size);

    c->low= 0;
    c->range= 0x1FE;
    c->outstanding_count= 0;
    c->pb.bit_left++;
}
