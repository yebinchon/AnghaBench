
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int nlmeans_filter_median_opt (int *,int const) ;

__attribute__((used)) static void nlmeans_filter_median(const uint8_t *src,
                                        uint8_t *dst,
                                  const int w,
                                  const int h,
                                  const int border,
                                  const int size)
{

    const int bw = w + 2 * border;
    const int offset_min = -((size - 1) /2);
    const int offset_max = (size + 1) /2;
    int index;
    uint8_t pixels[size * size];
    for (int y = 0; y < h; y++)
    {
        for (int x = 0; x < w; x++)
        {
            index = 0;
            for (int k = offset_min; k < offset_max; k++)
            {
                for (int j = offset_min; j < offset_max; j++)
                {
                    pixels[index] = *(src + bw*(y+j) + (x+k));
                    index++;
                }
            }
            *(dst + bw*y + x) = nlmeans_filter_median_opt(pixels, size);
        }
    }

}
