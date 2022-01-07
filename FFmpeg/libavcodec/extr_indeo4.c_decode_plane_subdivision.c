
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 int get_bits (int *,int) ;

__attribute__((used)) static int decode_plane_subdivision(GetBitContext *gb)
{
    int i;

    switch (get_bits(gb, 2)) {
    case 3:
        return 1;
    case 2:
        for (i = 0; i < 4; i++)
            if (get_bits(gb, 2) != 3)
                return 0;
        return 4;
    default:
        return 0;
    }
}
