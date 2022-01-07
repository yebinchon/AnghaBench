
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bitcount; int bitbuf; } ;
typedef TYPE_1__ bit_stream ;


 int lword (unsigned char*) ;

__attribute__((used)) static void bitread_init (bit_stream *bs, unsigned char **p) {
    bs->bitbuf = lword (*p);
    bs->bitcount = 16;
}
