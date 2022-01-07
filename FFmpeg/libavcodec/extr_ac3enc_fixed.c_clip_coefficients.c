
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {int (* vector_clip_int32 ) (int *,int *,int ,int ,unsigned int) ;} ;
typedef TYPE_1__ AudioDSPContext ;


 int COEF_MAX ;
 int COEF_MIN ;
 int stub1 (int *,int *,int ,int ,unsigned int) ;

__attribute__((used)) static void clip_coefficients(AudioDSPContext *adsp, int32_t *coef,
                              unsigned int len)
{
    adsp->vector_clip_int32(coef, coef, COEF_MIN, COEF_MAX, len);
}
