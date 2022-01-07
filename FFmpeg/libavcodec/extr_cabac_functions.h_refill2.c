
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int low; int* bytestream; int* bytestream_end; } ;
typedef TYPE_1__ CABACContext ;


 int CABAC_BITS ;
 unsigned int CABAC_MASK ;
 int ff_ctz (int) ;
 int* ff_h264_norm_shift ;

__attribute__((used)) static void refill2(CABACContext *c){
    int i;
    unsigned x;

    x= c->low ^ (c->low-1);
    i= 7 - ff_h264_norm_shift[x>>(CABAC_BITS-1)];




    x= -CABAC_MASK;




        x+= c->bytestream[0]<<1;


    c->low += x<<i;

    if (c->bytestream < c->bytestream_end)

        c->bytestream += CABAC_BITS/8;
}
