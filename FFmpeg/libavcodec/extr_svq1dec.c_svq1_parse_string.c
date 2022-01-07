
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int GetBitContext ;


 size_t get_bits (int *,int) ;
 size_t* string_table ;

__attribute__((used)) static void svq1_parse_string(GetBitContext *bitbuf, uint8_t out[257])
{
    uint8_t seed;
    int i;

    out[0] = get_bits(bitbuf, 8);
    seed = string_table[out[0]];

    for (i = 1; i <= out[0]; i++) {
        out[i] = get_bits(bitbuf, 8) ^ seed;
        seed = string_table[out[i] ^ seed];
    }
    out[i] = 0;
}
