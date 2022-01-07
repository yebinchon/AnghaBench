
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16_t ;
typedef int ptrdiff_t ;


 int memset (float*,int ,size_t) ;

__attribute__((used)) static void compute_histogram16(const uint16_t *src, ptrdiff_t linesize,
                                int w, int h, float *histogram, size_t hsize)
{
    int y, x;

    memset(histogram, 0, hsize * sizeof(*histogram));

    for (y = 0; y < h; y++) {
        for (x = 0; x < w; x++) {
            histogram[src[x]] += 1;
        }
        src += linesize;
    }

    for (x = 0; x < hsize - 1; x++) {
        histogram[x + 1] += histogram[x];
        histogram[x] /= hsize;
    }
    histogram[x] /= hsize;
}
