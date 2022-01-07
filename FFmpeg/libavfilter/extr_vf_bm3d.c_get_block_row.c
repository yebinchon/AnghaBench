
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float uint8_t ;



__attribute__((used)) static void get_block_row(const uint8_t *srcp, int src_linesize,
                          int y, int x, int block_size, float *dst)
{
    const uint8_t *src = srcp + y * src_linesize + x;
    int j;

    for (j = 0; j < block_size; j++) {
        dst[j] = src[j];
    }
}
