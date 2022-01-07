
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int ptrdiff_t ;



__attribute__((used)) static int add_left_pred_int16_c(uint16_t *dst, const uint16_t *src, unsigned mask, ptrdiff_t w, unsigned acc){
    int i;

    for(i=0; i<w-1; i++){
        acc+= src[i];
        dst[i]= acc &= mask;
        i++;
        acc+= src[i];
        dst[i]= acc &= mask;
    }

    for(; i<w; i++){
        acc+= src[i];
        dst[i]= acc &= mask;
    }

    return acc;
}
