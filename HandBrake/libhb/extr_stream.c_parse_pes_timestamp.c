
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ int64_t ;
typedef int bitbuf_t ;


 int bits_get (int *,int) ;
 scalar_t__ bits_skip (int *,int) ;

__attribute__((used)) static int64_t parse_pes_timestamp( bitbuf_t *bb )
{
    int64_t ts;

    ts = ( (uint64_t) bits_get(bb, 3) << 30 ) +
                         bits_skip(bb, 1) +
                       ( bits_get(bb, 15) << 15 ) +
                         bits_skip(bb, 1) +
                         bits_get(bb, 15);
    bits_skip(bb, 1);
    return ts;
}
