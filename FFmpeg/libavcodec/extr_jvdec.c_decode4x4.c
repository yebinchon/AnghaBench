
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int GetBitContext ;


 int decode2x2 (int *,int*,int) ;
 int get_bits (int *,int) ;
 size_t get_bits1 (int *) ;
 int memset (int*,int,int) ;

__attribute__((used)) static inline void decode4x4(GetBitContext *gb, uint8_t *dst, int linesize)
{
    int i, j, v[2];

    switch (get_bits(gb, 2)) {
    case 1:
        v[0] = get_bits(gb, 8);
        for (j = 0; j < 4; j++)
            memset(dst + j * linesize, v[0], 4);
        break;
    case 2:
        v[0] = get_bits(gb, 8);
        v[1] = get_bits(gb, 8);
        for (j = 2; j >= 0; j -= 2) {
            for (i = 0; i < 4; i++)
                dst[j * linesize + i] = v[get_bits1(gb)];
            for (i = 0; i < 4; i++)
                dst[(j + 1) * linesize + i] = v[get_bits1(gb)];
        }
        break;
    case 3:
        for (j = 0; j < 4; j += 2)
            for (i = 0; i < 4; i += 2)
                decode2x2(gb, dst + j * linesize + i, linesize);
    }
}
