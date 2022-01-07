
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const y ;
typedef int uint8_t ;



__attribute__((used)) static void nlmeans_filter_csm(const uint8_t *src,
                                     uint8_t *dst,
                               const int w,
                               const int h,
                               const int border,
                               const int size)
{

    const int bw = w + 2 * border;
    const int offset_min = -((size - 1) /2);
    const int offset_max = (size + 1) /2;
    uint8_t min, max,
            min2, max2,
            min3, max3,
            median,
            pixel;
    for (int y = 0; y < h; y++)
    {
        for (int x = 0; x < w; x++)
        {
            for (int k = offset_min; k < offset_max; k++)
            {
                for (int j = offset_min; j < offset_max; j++)
                {
                    if (k == 0 && j == 0)
                    {

                        goto end;
                    }
                    pixel = *(src + bw*(y+j) + (x+k));
                    if (k == offset_min && j == offset_min)
                    {

                        min = pixel;
                        max = min;
                        goto end;
                    }
                    if (pixel < min)
                    {
                        min = pixel;
                    }
                    if (pixel > max)
                    {
                        max = pixel;
                    }
                }
                end:
                    continue;
            }






            median = (min + max) / 2;


            min2 = (min + median) / 2;
            max2 = (max + median) / 2;
            min3 = (min2 + median) / 2;
            max3 = (max2 + median) / 2;


            pixel = *(src + bw*(y) + (x));
            if (pixel < min)
            {
                *(dst + bw*y + x) = min;
            }
            else if (pixel > max)
            {
                *(dst + bw*y + x) = max;
            }
            else if (pixel < min2)
            {
                *(dst + bw*y + x) = min2;
            }
            else if (pixel > max2)
            {
                *(dst + bw*y + x) = max2;
            }
            else if (pixel < min3)
            {
                *(dst + bw*y + x) = min3;
            }
            else if (pixel > max3)
            {
                *(dst + bw*y + x) = max3;
            }
        }
    }
}
