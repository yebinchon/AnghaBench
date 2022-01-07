
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {int (* fft_calc ) (TYPE_4__*,int *) ;int (* fft_permute ) (TYPE_4__*,int *) ;} ;
struct TYPE_14__ {int (* fft_calc ) (TYPE_3__*,int *) ;int (* fft_permute ) (TYPE_3__*,int *) ;} ;
struct TYPE_13__ {TYPE_3__ fft512; TYPE_4__ fft128; } ;
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

__attribute__((used)) static void wtf_end_512(On2AVCContext *c, float *out, float *src,
                        float *tmp0, float *tmp1)
{
    memcpy(src, tmp0, 384 * sizeof(*tmp0));
    memcpy(tmp0 + 384, src + 384, 128 * sizeof(*tmp0));

    zero_head_and_tail(src, 128, 16, 4);
    zero_head_and_tail(src + 128, 128, 16, 4);
    zero_head_and_tail(src + 256, 128, 13, 7);
    zero_head_and_tail(src + 384, 128, 15, 5);

    c->fft128.fft_permute(&c->fft128, (FFTComplex*)src);
    c->fft128.fft_permute(&c->fft128, (FFTComplex*)(src + 128));
    c->fft128.fft_permute(&c->fft128, (FFTComplex*)(src + 256));
    c->fft128.fft_permute(&c->fft128, (FFTComplex*)(src + 384));
    c->fft128.fft_calc(&c->fft128, (FFTComplex*)src);
    c->fft128.fft_calc(&c->fft128, (FFTComplex*)(src + 128));
    c->fft128.fft_calc(&c->fft128, (FFTComplex*)(src + 256));
    c->fft128.fft_calc(&c->fft128, (FFTComplex*)(src + 384));
    combine_fft(src, src + 128, src + 256, src + 384, tmp1,
                ff_on2avc_ctab_1, ff_on2avc_ctab_2,
                ff_on2avc_ctab_3, ff_on2avc_ctab_4, 512, 2);
    c->fft512.fft_permute(&c->fft512, (FFTComplex*)tmp1);
    c->fft512.fft_calc(&c->fft512, (FFTComplex*)tmp1);

    pretwiddle(&tmp0[ 0], tmp1, 512, 84, 4, 16, 4, ff_on2avc_tabs_20_84_1);
    pretwiddle(&tmp0[128], tmp1, 512, 84, 4, 16, 4, ff_on2avc_tabs_20_84_2);
    pretwiddle(&tmp0[256], tmp1, 512, 84, 4, 13, 7, ff_on2avc_tabs_20_84_3);
    pretwiddle(&tmp0[384], tmp1, 512, 84, 4, 15, 5, ff_on2avc_tabs_20_84_4);

    memcpy(src, tmp1, 512 * sizeof(float));
}
