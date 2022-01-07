
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int ptrdiff_t ;


 scalar_t__ AV_RL32 (int const*) ;

__attribute__((used)) static int constant_color(const uint8_t *block, ptrdiff_t stride)
{
    int x, y;
    uint32_t first = AV_RL32(block);

    for (y = 0; y < 4; y++)
        for (x = 0; x < 4; x++)
            if (first != AV_RL32(block + x * 4 + y * stride))
                return 0;
    return 1;
}
