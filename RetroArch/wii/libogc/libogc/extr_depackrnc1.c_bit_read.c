
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bit_stream ;


 int bit_advance (int *,int,unsigned char**) ;
 unsigned long bit_peek (int *,unsigned long) ;

__attribute__((used)) static unsigned long bit_read (bit_stream *bs, unsigned long mask,
          int n, unsigned char **p) {
    unsigned long result = bit_peek (bs, mask);
    bit_advance (bs, n, p);
    return result;
}
