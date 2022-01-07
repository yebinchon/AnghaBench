
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float FFABS (float) ;

__attribute__((used)) static void soft_thresholding(float *block, const int width, const int height, const int stride,
                              const float threshold, const float percent, const int nsteps)
{
    const float frac = 1.f - percent * 0.01f;
    const float shift = threshold * 0.01f * percent;
    int w = width;
    int h = height;
    int y, x, l;

    for (l = 0; l < nsteps; l++) {
        w = (w + 1) >> 1;
        h = (h + 1) >> 1;
    }

    for (y = 0; y < height; y++) {
        const int x0 = (y < h) ? w : 0;
        for (x = x0; x < width; x++) {
            const float temp = FFABS(block[x]);
            if (temp <= threshold)
                block[x] *= frac;
            else
                block[x] = (block[x] < 0.f ? -1.f : (block[x] > 0.f ? 1.f : 0.f)) * (temp - shift);
        }
        block += stride;
    }
}
