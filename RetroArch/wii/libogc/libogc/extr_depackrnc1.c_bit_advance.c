
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bitbuf; int bitcount; } ;
typedef TYPE_1__ bit_stream ;


 int lword (unsigned char*) ;

__attribute__((used)) static void bit_advance (bit_stream *bs, int n, unsigned char **p) {
    bs->bitbuf >>= n;
    bs->bitcount -= n;
    if (bs->bitcount < 16) {
 (*p) += 2;
 bs->bitbuf |= (lword(*p)<<bs->bitcount);
 bs->bitcount += 16;
    }
}
