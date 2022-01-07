
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 int get_bits (int *,int) ;
 scalar_t__ get_bits1 (int *) ;
 int get_bits_left (int *) ;
 int get_unary (int *,int ,int ) ;

__attribute__((used)) static void decode_gain_info(GetBitContext *gb, int *gaininfo)
{
    int i, n;

    n = get_unary(gb, 0, get_bits_left(gb));

    i = 0;
    while (n--) {
        int index = get_bits(gb, 3);
        int gain = get_bits1(gb) ? get_bits(gb, 4) - 7 : -1;

        while (i <= index)
            gaininfo[i++] = gain;
    }
    while (i <= 8)
        gaininfo[i++] = 0;
}
