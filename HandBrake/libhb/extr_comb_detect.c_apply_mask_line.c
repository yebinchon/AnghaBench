
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static void apply_mask_line( uint8_t * srcp,
                             uint8_t * mskp,
                             int width )
{
    int x;

    for (x = 0; x < width; x++)
    {
        if (mskp[x] == 1)
        {
            srcp[x] = 255;
        }
        if (mskp[x] == 128)
        {
            srcp[x] = 128;
        }
    }
}
