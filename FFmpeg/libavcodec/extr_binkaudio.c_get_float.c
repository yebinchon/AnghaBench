
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 int get_bits (int *,int) ;
 scalar_t__ get_bits1 (int *) ;
 int get_bits_long (int *,int) ;
 float ldexpf (int ,int) ;

__attribute__((used)) static float get_float(GetBitContext *gb)
{
    int power = get_bits(gb, 5);
    float f = ldexpf(get_bits_long(gb, 23), power - 23);
    if (get_bits1(gb))
        f = -f;
    return f;
}
