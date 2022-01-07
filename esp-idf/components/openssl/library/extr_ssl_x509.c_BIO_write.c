
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dlen; void const* data; } ;
typedef TYPE_1__ BIO ;



int BIO_write(BIO *b, const void * data, int dlen) {
    b->data = data;
    b->dlen = dlen;
    return 1;
}
