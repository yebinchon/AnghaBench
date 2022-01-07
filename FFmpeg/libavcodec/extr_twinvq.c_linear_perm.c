
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;



__attribute__((used)) static void linear_perm(int16_t *out, int16_t *in, int n_blocks, int size)
{
    int block_size = size / n_blocks;
    int i;

    for (i = 0; i < size; i++)
        out[i] = block_size * (in[i] % n_blocks) + in[i] / n_blocks;
}
