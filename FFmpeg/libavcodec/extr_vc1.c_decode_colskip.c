
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int GetBitContext ;


 scalar_t__ get_bits1 (int *) ;

__attribute__((used)) static void decode_colskip(uint8_t* plane, int width, int height, int stride,
                           GetBitContext *gb)
{
    int x, y;

    for (x = 0; x < width; x++) {
        if (!get_bits1(gb))
            for (y = 0; y < height; y++)
                plane[y*stride] = 0;
        else
            for (y = 0; y < height; y++)
                plane[y*stride] = get_bits1(gb);
        plane ++;
    }
}
