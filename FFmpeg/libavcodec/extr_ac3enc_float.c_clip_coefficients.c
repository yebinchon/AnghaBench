
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* vector_clipf ) (float*,float*,unsigned int,int ,int ) ;} ;
typedef TYPE_1__ AudioDSPContext ;


 int COEF_MAX ;
 int COEF_MIN ;
 int stub1 (float*,float*,unsigned int,int ,int ) ;

__attribute__((used)) static void clip_coefficients(AudioDSPContext *adsp, float *coef,
                              unsigned int len)
{
    adsp->vector_clipf(coef, coef, len, COEF_MIN, COEF_MAX);
}
