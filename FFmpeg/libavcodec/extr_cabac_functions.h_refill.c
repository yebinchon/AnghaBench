
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int low; int* bytestream; int* bytestream_end; } ;
typedef TYPE_1__ CABACContext ;


 int CABAC_BITS ;
 scalar_t__ CABAC_MASK ;

__attribute__((used)) static void refill(CABACContext *c){



        c->low+= c->bytestream[0]<<1;

    c->low -= CABAC_MASK;

    if (c->bytestream < c->bytestream_end)

        c->bytestream += CABAC_BITS / 8;
}
