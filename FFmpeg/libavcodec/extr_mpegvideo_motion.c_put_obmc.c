
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int OBMC_FILTER (int,int,int,int,int,int) ;
 int OBMC_FILTER4 (int,int,int,int,int,int) ;

__attribute__((used)) static inline void put_obmc(uint8_t *dst, uint8_t *src[5], int stride)
{
    int x;
    uint8_t *const top = src[1];
    uint8_t *const left = src[2];
    uint8_t *const mid = src[0];
    uint8_t *const right = src[3];
    uint8_t *const bottom = src[4];
    x = 0;
    dst[x]= (2*top[x] + 2*left[x] + 4*mid[x] + 0*right[x] + 0*bottom[x] + 4)>>3;
    dst[x + 1]= (2*top[x + 1] + 1*left[x + 1] + 5*mid[x + 1] + 0*right[x + 1] + 0*bottom[x + 1] + 4)>>3;
    dst[x + 2]= (2*top[x + 2] + 1*left[x + 2] + 5*mid[x + 2] + 0*right[x + 2] + 0*bottom[x + 2] + 4)>>3; dst[x + 2 +1]= (2*top[x + 2 +1] + 1*left[x + 2 +1] + 5*mid[x + 2 +1] + 0*right[x + 2 +1] + 0*bottom[x + 2 +1] + 4)>>3; dst[x + 2 +stride]= (2*top[x + 2 +stride] + 1*left[x + 2 +stride] + 5*mid[x + 2 +stride] + 0*right[x + 2 +stride] + 0*bottom[x + 2 +stride] + 4)>>3; dst[x + 2 +1+stride]= (2*top[x + 2 +1+stride] + 1*left[x + 2 +1+stride] + 5*mid[x + 2 +1+stride] + 0*right[x + 2 +1+stride] + 0*bottom[x + 2 +1+stride] + 4)>>3;;
    dst[x + 4]= (2*top[x + 4] + 0*left[x + 4] + 5*mid[x + 4] + 1*right[x + 4] + 0*bottom[x + 4] + 4)>>3; dst[x + 4 +1]= (2*top[x + 4 +1] + 0*left[x + 4 +1] + 5*mid[x + 4 +1] + 1*right[x + 4 +1] + 0*bottom[x + 4 +1] + 4)>>3; dst[x + 4 +stride]= (2*top[x + 4 +stride] + 0*left[x + 4 +stride] + 5*mid[x + 4 +stride] + 1*right[x + 4 +stride] + 0*bottom[x + 4 +stride] + 4)>>3; dst[x + 4 +1+stride]= (2*top[x + 4 +1+stride] + 0*left[x + 4 +1+stride] + 5*mid[x + 4 +1+stride] + 1*right[x + 4 +1+stride] + 0*bottom[x + 4 +1+stride] + 4)>>3;;
    dst[x + 6]= (2*top[x + 6] + 0*left[x + 6] + 5*mid[x + 6] + 1*right[x + 6] + 0*bottom[x + 6] + 4)>>3;
    dst[x + 7]= (2*top[x + 7] + 0*left[x + 7] + 4*mid[x + 7] + 2*right[x + 7] + 0*bottom[x + 7] + 4)>>3;
    x += stride;
    dst[x]= (1*top[x] + 2*left[x] + 5*mid[x] + 0*right[x] + 0*bottom[x] + 4)>>3;
    dst[x + 1]= (1*top[x + 1] + 2*left[x + 1] + 5*mid[x + 1] + 0*right[x + 1] + 0*bottom[x + 1] + 4)>>3;
    dst[x + 6]= (1*top[x + 6] + 0*left[x + 6] + 5*mid[x + 6] + 2*right[x + 6] + 0*bottom[x + 6] + 4)>>3;
    dst[x + 7]= (1*top[x + 7] + 0*left[x + 7] + 5*mid[x + 7] + 2*right[x + 7] + 0*bottom[x + 7] + 4)>>3;
    x += stride;
    dst[x]= (1*top[x] + 2*left[x] + 5*mid[x] + 0*right[x] + 0*bottom[x] + 4)>>3; dst[x+1]= (1*top[x+1] + 2*left[x+1] + 5*mid[x+1] + 0*right[x+1] + 0*bottom[x+1] + 4)>>3; dst[x +stride]= (1*top[x +stride] + 2*left[x +stride] + 5*mid[x +stride] + 0*right[x +stride] + 0*bottom[x +stride] + 4)>>3; dst[x+1+stride]= (1*top[x+1+stride] + 2*left[x+1+stride] + 5*mid[x+1+stride] + 0*right[x+1+stride] + 0*bottom[x+1+stride] + 4)>>3;;
    dst[x + 2]= (1*top[x + 2] + 1*left[x + 2] + 6*mid[x + 2] + 0*right[x + 2] + 0*bottom[x + 2] + 4)>>3; dst[x + 2 +1]= (1*top[x + 2 +1] + 1*left[x + 2 +1] + 6*mid[x + 2 +1] + 0*right[x + 2 +1] + 0*bottom[x + 2 +1] + 4)>>3; dst[x + 2 +stride]= (1*top[x + 2 +stride] + 1*left[x + 2 +stride] + 6*mid[x + 2 +stride] + 0*right[x + 2 +stride] + 0*bottom[x + 2 +stride] + 4)>>3; dst[x + 2 +1+stride]= (1*top[x + 2 +1+stride] + 1*left[x + 2 +1+stride] + 6*mid[x + 2 +1+stride] + 0*right[x + 2 +1+stride] + 0*bottom[x + 2 +1+stride] + 4)>>3;;
    dst[x + 4]= (1*top[x + 4] + 0*left[x + 4] + 6*mid[x + 4] + 1*right[x + 4] + 0*bottom[x + 4] + 4)>>3; dst[x + 4 +1]= (1*top[x + 4 +1] + 0*left[x + 4 +1] + 6*mid[x + 4 +1] + 1*right[x + 4 +1] + 0*bottom[x + 4 +1] + 4)>>3; dst[x + 4 +stride]= (1*top[x + 4 +stride] + 0*left[x + 4 +stride] + 6*mid[x + 4 +stride] + 1*right[x + 4 +stride] + 0*bottom[x + 4 +stride] + 4)>>3; dst[x + 4 +1+stride]= (1*top[x + 4 +1+stride] + 0*left[x + 4 +1+stride] + 6*mid[x + 4 +1+stride] + 1*right[x + 4 +1+stride] + 0*bottom[x + 4 +1+stride] + 4)>>3;;
    dst[x + 6]= (1*top[x + 6] + 0*left[x + 6] + 5*mid[x + 6] + 2*right[x + 6] + 0*bottom[x + 6] + 4)>>3; dst[x + 6 +1]= (1*top[x + 6 +1] + 0*left[x + 6 +1] + 5*mid[x + 6 +1] + 2*right[x + 6 +1] + 0*bottom[x + 6 +1] + 4)>>3; dst[x + 6 +stride]= (1*top[x + 6 +stride] + 0*left[x + 6 +stride] + 5*mid[x + 6 +stride] + 2*right[x + 6 +stride] + 0*bottom[x + 6 +stride] + 4)>>3; dst[x + 6 +1+stride]= (1*top[x + 6 +1+stride] + 0*left[x + 6 +1+stride] + 5*mid[x + 6 +1+stride] + 2*right[x + 6 +1+stride] + 0*bottom[x + 6 +1+stride] + 4)>>3;;
    x += 2 * stride;
    dst[x]= (0*top[x] + 2*left[x] + 5*mid[x] + 0*right[x] + 1*bottom[x] + 4)>>3; dst[x+1]= (0*top[x+1] + 2*left[x+1] + 5*mid[x+1] + 0*right[x+1] + 1*bottom[x+1] + 4)>>3; dst[x +stride]= (0*top[x +stride] + 2*left[x +stride] + 5*mid[x +stride] + 0*right[x +stride] + 1*bottom[x +stride] + 4)>>3; dst[x+1+stride]= (0*top[x+1+stride] + 2*left[x+1+stride] + 5*mid[x+1+stride] + 0*right[x+1+stride] + 1*bottom[x+1+stride] + 4)>>3;;
    dst[x + 2]= (0*top[x + 2] + 1*left[x + 2] + 6*mid[x + 2] + 0*right[x + 2] + 1*bottom[x + 2] + 4)>>3; dst[x + 2 +1]= (0*top[x + 2 +1] + 1*left[x + 2 +1] + 6*mid[x + 2 +1] + 0*right[x + 2 +1] + 1*bottom[x + 2 +1] + 4)>>3; dst[x + 2 +stride]= (0*top[x + 2 +stride] + 1*left[x + 2 +stride] + 6*mid[x + 2 +stride] + 0*right[x + 2 +stride] + 1*bottom[x + 2 +stride] + 4)>>3; dst[x + 2 +1+stride]= (0*top[x + 2 +1+stride] + 1*left[x + 2 +1+stride] + 6*mid[x + 2 +1+stride] + 0*right[x + 2 +1+stride] + 1*bottom[x + 2 +1+stride] + 4)>>3;;
    dst[x + 4]= (0*top[x + 4] + 0*left[x + 4] + 6*mid[x + 4] + 1*right[x + 4] + 1*bottom[x + 4] + 4)>>3; dst[x + 4 +1]= (0*top[x + 4 +1] + 0*left[x + 4 +1] + 6*mid[x + 4 +1] + 1*right[x + 4 +1] + 1*bottom[x + 4 +1] + 4)>>3; dst[x + 4 +stride]= (0*top[x + 4 +stride] + 0*left[x + 4 +stride] + 6*mid[x + 4 +stride] + 1*right[x + 4 +stride] + 1*bottom[x + 4 +stride] + 4)>>3; dst[x + 4 +1+stride]= (0*top[x + 4 +1+stride] + 0*left[x + 4 +1+stride] + 6*mid[x + 4 +1+stride] + 1*right[x + 4 +1+stride] + 1*bottom[x + 4 +1+stride] + 4)>>3;;
    dst[x + 6]= (0*top[x + 6] + 0*left[x + 6] + 5*mid[x + 6] + 2*right[x + 6] + 1*bottom[x + 6] + 4)>>3; dst[x + 6 +1]= (0*top[x + 6 +1] + 0*left[x + 6 +1] + 5*mid[x + 6 +1] + 2*right[x + 6 +1] + 1*bottom[x + 6 +1] + 4)>>3; dst[x + 6 +stride]= (0*top[x + 6 +stride] + 0*left[x + 6 +stride] + 5*mid[x + 6 +stride] + 2*right[x + 6 +stride] + 1*bottom[x + 6 +stride] + 4)>>3; dst[x + 6 +1+stride]= (0*top[x + 6 +1+stride] + 0*left[x + 6 +1+stride] + 5*mid[x + 6 +1+stride] + 2*right[x + 6 +1+stride] + 1*bottom[x + 6 +1+stride] + 4)>>3;;
    x += 2*stride;
    dst[x]= (0*top[x] + 2*left[x] + 5*mid[x] + 0*right[x] + 1*bottom[x] + 4)>>3;
    dst[x + 1]= (0*top[x + 1] + 2*left[x + 1] + 5*mid[x + 1] + 0*right[x + 1] + 1*bottom[x + 1] + 4)>>3;
    dst[x + 2]= (0*top[x + 2] + 1*left[x + 2] + 5*mid[x + 2] + 0*right[x + 2] + 2*bottom[x + 2] + 4)>>3; dst[x + 2 +1]= (0*top[x + 2 +1] + 1*left[x + 2 +1] + 5*mid[x + 2 +1] + 0*right[x + 2 +1] + 2*bottom[x + 2 +1] + 4)>>3; dst[x + 2 +stride]= (0*top[x + 2 +stride] + 1*left[x + 2 +stride] + 5*mid[x + 2 +stride] + 0*right[x + 2 +stride] + 2*bottom[x + 2 +stride] + 4)>>3; dst[x + 2 +1+stride]= (0*top[x + 2 +1+stride] + 1*left[x + 2 +1+stride] + 5*mid[x + 2 +1+stride] + 0*right[x + 2 +1+stride] + 2*bottom[x + 2 +1+stride] + 4)>>3;;
    dst[x + 4]= (0*top[x + 4] + 0*left[x + 4] + 5*mid[x + 4] + 1*right[x + 4] + 2*bottom[x + 4] + 4)>>3; dst[x + 4 +1]= (0*top[x + 4 +1] + 0*left[x + 4 +1] + 5*mid[x + 4 +1] + 1*right[x + 4 +1] + 2*bottom[x + 4 +1] + 4)>>3; dst[x + 4 +stride]= (0*top[x + 4 +stride] + 0*left[x + 4 +stride] + 5*mid[x + 4 +stride] + 1*right[x + 4 +stride] + 2*bottom[x + 4 +stride] + 4)>>3; dst[x + 4 +1+stride]= (0*top[x + 4 +1+stride] + 0*left[x + 4 +1+stride] + 5*mid[x + 4 +1+stride] + 1*right[x + 4 +1+stride] + 2*bottom[x + 4 +1+stride] + 4)>>3;;
    dst[x + 6]= (0*top[x + 6] + 0*left[x + 6] + 5*mid[x + 6] + 2*right[x + 6] + 1*bottom[x + 6] + 4)>>3;
    dst[x + 7]= (0*top[x + 7] + 0*left[x + 7] + 5*mid[x + 7] + 2*right[x + 7] + 1*bottom[x + 7] + 4)>>3;
    x += stride;
    dst[x]= (0*top[x] + 2*left[x] + 4*mid[x] + 0*right[x] + 2*bottom[x] + 4)>>3;
    dst[x + 1]= (0*top[x + 1] + 1*left[x + 1] + 5*mid[x + 1] + 0*right[x + 1] + 2*bottom[x + 1] + 4)>>3;
    dst[x + 6]= (0*top[x + 6] + 0*left[x + 6] + 5*mid[x + 6] + 1*right[x + 6] + 2*bottom[x + 6] + 4)>>3;
    dst[x + 7]= (0*top[x + 7] + 0*left[x + 7] + 4*mid[x + 7] + 2*right[x + 7] + 2*bottom[x + 7] + 4)>>3;
}
