
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int size_in_bits; } ;
typedef TYPE_1__ PutBitContext ;
typedef int GetBitContext ;


 int FFMIN (int,int) ;
 int avpriv_copy_bits (TYPE_1__*,int const*,int) ;
 int get_bits (int *,int) ;
 int get_bits_left (int *) ;
 int put_bits (TYPE_1__*,int,int ) ;
 int put_bits_count (TYPE_1__*) ;

__attribute__((used)) static void copy_bits(PutBitContext *pb,
                      const uint8_t *data, int size,
                      GetBitContext *gb, int nbits)
{
    int rmn_bytes, rmn_bits;

    rmn_bits = rmn_bytes = get_bits_left(gb);
    if (rmn_bits < nbits)
        return;
    if (nbits > pb->size_in_bits - put_bits_count(pb))
        return;
    rmn_bits &= 7; rmn_bytes >>= 3;
    if ((rmn_bits = FFMIN(rmn_bits, nbits)) > 0)
        put_bits(pb, rmn_bits, get_bits(gb, rmn_bits));
    avpriv_copy_bits(pb, data + size - rmn_bytes,
                 FFMIN(nbits - rmn_bits, rmn_bytes << 3));
}
