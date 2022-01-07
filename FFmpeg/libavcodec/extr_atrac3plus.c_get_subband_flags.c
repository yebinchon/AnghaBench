
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int GetBitContext ;


 int get_bits1 (int *) ;
 int memset (int*,int,int) ;

__attribute__((used)) static int get_subband_flags(GetBitContext *gb, uint8_t *out, int num_flags)
{
    int i, result;

    memset(out, 0, num_flags);

    result = get_bits1(gb);
    if (result) {
        if (get_bits1(gb))
            for (i = 0; i < num_flags; i++)
                out[i] = get_bits1(gb);
        else
            memset(out, 1, num_flags);
    }

    return result;
}
