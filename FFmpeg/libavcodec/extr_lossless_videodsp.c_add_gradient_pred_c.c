
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;



__attribute__((used)) static void add_gradient_pred_c(uint8_t *src, const ptrdiff_t stride, const ptrdiff_t width){
    int A, B, C, i;

    for (i = 0; i < width; i++) {
        A = src[i - stride];
        B = src[i - (stride + 1)];
        C = src[i - 1];
        src[i] = (A - B + C + src[i]) & 0xFF;
    }
}
