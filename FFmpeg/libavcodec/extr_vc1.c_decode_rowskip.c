
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int GetBitContext ;


 scalar_t__ get_bits1 (int *) ;
 int memset (scalar_t__*,int ,int) ;

__attribute__((used)) static void decode_rowskip(uint8_t* plane, int width, int height, int stride,
                           GetBitContext *gb)
{
    int x, y;

    for (y = 0; y < height; y++) {
        if (!get_bits1(gb))
            memset(plane, 0, width);
        else
            for (x = 0; x < width; x++)
                plane[x] = get_bits1(gb);
        plane += stride;
    }
}
