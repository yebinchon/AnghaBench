
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long bitbuf; } ;
typedef TYPE_1__ bit_stream ;



__attribute__((used)) static unsigned long bit_peek (bit_stream *bs, unsigned long mask) {
    return bs->bitbuf & mask;
}
