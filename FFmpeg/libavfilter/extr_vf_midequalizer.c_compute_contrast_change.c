
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void compute_contrast_change(float *histogram1, float *histogram2,
                                    unsigned *cchange, size_t hsize)
{
    int i;

    for (i = 0; i < hsize; i++) {
        int j;

        for (j = 0; j < hsize && histogram2[j] < histogram1[i]; j++);

        cchange[i] = (i + j) / 2;
    }
}
