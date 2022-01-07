
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ SCALE_DIV_512 ;
 scalar_t__ SCALE_ONE_POS ;
 int av_clip_uint8 (scalar_t__) ;
 int log2f (float) ;

__attribute__((used)) static inline uint8_t coef2maxsf(float coef)
{
    return av_clip_uint8(log2f(coef)*4 + 6 + SCALE_ONE_POS - SCALE_DIV_512);
}
