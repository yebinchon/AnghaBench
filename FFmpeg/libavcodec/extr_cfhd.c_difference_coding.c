
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int16_t ;



__attribute__((used)) static inline void difference_coding(int16_t *band, int width, int height)
{

    int i,j;
    for (i = 0; i < height; i++) {
        for (j = 1; j < width; j++) {
          band[j] += band[j-1];
        }
        band += width;
    }
}
