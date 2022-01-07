
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float gaussian_for (int,float) ;

__attribute__((used)) static void make_gauss_kernel(float *gauss_kernel, float length, float sigma)
{
    float gauss_sum = 0;
    int window_half = length / 2;

    for (int i = 0; i < length; ++i) {
        float val = gaussian_for(i - window_half, sigma);

        gauss_sum += val;
        gauss_kernel[i] = val;
    }


    for (int i = 0; i < length; ++i) {
        gauss_kernel[i] /= gauss_sum;
    }
}
