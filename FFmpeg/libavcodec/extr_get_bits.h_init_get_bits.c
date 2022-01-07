
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int GetBitContext ;


 int init_get_bits_xe (int *,int const*,int,int) ;

__attribute__((used)) static inline int init_get_bits(GetBitContext *s, const uint8_t *buffer,
                                int bit_size)
{



    return init_get_bits_xe(s, buffer, bit_size, 0);

}
