
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* dct32 ) (int *,int *) ;} ;
typedef int FFTSample ;
typedef TYPE_1__ DCTContext ;


 int stub1 (int *,int *) ;

__attribute__((used)) static void dct32_func(DCTContext *ctx, FFTSample *data)
{
    ctx->dct32(data, data);
}
