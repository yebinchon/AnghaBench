
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int range; int low; int pb; } ;
typedef TYPE_1__ CABACContext ;


 int av_assert0 (int) ;
 int flush_put_bits (int *) ;
 int put_bits (int *,int,int) ;
 int put_bits_count (int *) ;
 int put_cabac_bit (TYPE_1__*,int) ;
 int renorm_cabac_encoder (TYPE_1__*) ;

__attribute__((used)) static int put_cabac_terminate(CABACContext *c, int bit){
    c->range -= 2;

    if(!bit){
        renorm_cabac_encoder(c);
    }else{
        c->low += c->range;
        c->range= 2;

        renorm_cabac_encoder(c);

        av_assert0(c->low <= 0x1FF);
        put_cabac_bit(c, c->low>>9);
        put_bits(&c->pb, 2, ((c->low>>7)&3)|1);

        flush_put_bits(&c->pb);
    }

    return (put_bits_count(&c->pb)+7)>>3;
}
