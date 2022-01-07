
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {int (* fft_calc ) (TYPE_4__*,int *) ;int (* fft_permute ) (TYPE_4__*,int *) ;} ;
struct TYPE_14__ {int (* fft_calc ) (TYPE_3__*,int *) ;int (* fft_permute ) (TYPE_3__*,int *) ;} ;
struct TYPE_13__ {TYPE_3__ fft1024; TYPE_4__ fft256; } ;
typedef TYPE_1__ On2AVCContext ;
typedef int FFTComplex ;


 int combine_fft (float*,float*,float*,float*,float*,int ,int ,int ,int ,int,int) ;
 int ff_on2avc_ctab_1 ;
 int ff_on2avc_ctab_2 ;
 int ff_on2avc_ctab_3 ;
 int ff_on2avc_ctab_4 ;
 int ff_on2avc_tabs_20_84_1 ;
 int ff_on2avc_tabs_20_84_2 ;
 int ff_on2avc_tabs_20_84_3 ;
 int ff_on2avc_tabs_20_84_4 ;
 int memcpy (float*,float*,int) ;
 int pretwiddle (float*,float*,int,int,int,int,int,int ) ;
 int stub1 (TYPE_4__*,int *) ;
 int stub10 (TYPE_3__*,int *) ;
 int stub2 (TYPE_4__*,int *) ;
 int stub3 (TYPE_4__*,int *) ;
 int stub4 (TYPE_4__*,int *) ;
 int stub5 (TYPE_4__*,int *) ;
 int stub6 (TYPE_4__*,int *) ;
 int stub7 (TYPE_4__*,int *) ;
 int stub8 (TYPE_4__*,int *) ;
 int stub9 (TYPE_3__*,int *) ;
 int zero_head_and_tail (float*,int,int,int) ;

__attribute__((used)) static void wtf_end_1024(On2AVCContext *c, float *out, float *src,
                         float *tmp0, float *tmp1)
{
    memcpy(src, tmp0, 768 * sizeof(*tmp0));
    memcpy(tmp0 + 768, src + 768, 256 * sizeof(*tmp0));

    zero_head_and_tail(src, 256, 16, 4);
    zero_head_and_tail(src + 256, 256, 16, 4);
    zero_head_and_tail(src + 512, 256, 13, 7);
    zero_head_and_tail(src + 768, 256, 15, 5);

    c->fft256.fft_permute(&c->fft256, (FFTComplex*)src);
    c->fft256.fft_permute(&c->fft256, (FFTComplex*)(src + 256));
    c->fft256.fft_permute(&c->fft256, (FFTComplex*)(src + 512));
    c->fft256.fft_permute(&c->fft256, (FFTComplex*)(src + 768));
    c->fft256.fft_calc(&c->fft256, (FFTComplex*)src);
    c->fft256.fft_calc(&c->fft256, (FFTComplex*)(src + 256));
    c->fft256.fft_calc(&c->fft256, (FFTComplex*)(src + 512));
    c->fft256.fft_calc(&c->fft256, (FFTComplex*)(src + 768));
    combine_fft(src, src + 256, src + 512, src + 768, tmp1,
                ff_on2avc_ctab_1, ff_on2avc_ctab_2,
                ff_on2avc_ctab_3, ff_on2avc_ctab_4, 1024, 1);
    c->fft1024.fft_permute(&c->fft1024, (FFTComplex*)tmp1);
    c->fft1024.fft_calc(&c->fft1024, (FFTComplex*)tmp1);

    pretwiddle(&tmp0[ 0], tmp1, 1024, 84, 4, 16, 4, ff_on2avc_tabs_20_84_1);
    pretwiddle(&tmp0[256], tmp1, 1024, 84, 4, 16, 4, ff_on2avc_tabs_20_84_2);
    pretwiddle(&tmp0[512], tmp1, 1024, 84, 4, 13, 7, ff_on2avc_tabs_20_84_3);
    pretwiddle(&tmp0[768], tmp1, 1024, 84, 4, 15, 5, ff_on2avc_tabs_20_84_4);

    memcpy(src, tmp1, 1024 * sizeof(float));
}
