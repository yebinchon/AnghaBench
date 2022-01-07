
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int GetBitContext ;


 int get_bits (int *,int) ;
 int get_bits1 (int *) ;

__attribute__((used)) static int get_value_cached(GetBitContext *gb, int vec_pos, uint8_t *vec,
                            int vec_size, int component, int shift, int *prev)
{
    if (vec_pos < vec_size)
        return vec[vec_pos];
    if (!get_bits1(gb))
        return prev[component];
    prev[component] = get_bits(gb, 8 - shift) << shift;
    return prev[component];
}
