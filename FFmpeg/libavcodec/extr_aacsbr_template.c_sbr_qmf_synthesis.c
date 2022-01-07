
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int (* vector_fmul_add ) (int *,int *,int const*,int *,int) ;int (* vector_fmul ) (int *,int *,int const*,int) ;} ;
struct TYPE_12__ {int (* imdct_half ) (TYPE_2__*,int *,int *) ;} ;
struct TYPE_11__ {int (* qmf_deint_bfly ) (int *,int *,int *) ;int (* neg_odd_64 ) (int *) ;int (* qmf_deint_neg ) (int *,int *) ;} ;
typedef TYPE_1__ SBRDSPContext ;
typedef int INTFLOAT ;
typedef TYPE_2__ FFTContext ;
typedef TYPE_3__ AVFloatDSPContext ;
typedef int AVFixedDSPContext ;


 int SBR_SYNTHESIS_BUF_SIZE ;
 int memcpy (int *,int *,int) ;
 int * sbr_qmf_window_ds ;
 int * sbr_qmf_window_us ;
 int stub1 (TYPE_2__*,int *,int *) ;
 int stub10 (int *,int *,int const*,int *,int) ;
 int stub11 (int *,int *,int const*,int *,int) ;
 int stub12 (int *,int *,int const*,int *,int) ;
 int stub13 (int *,int *,int const*,int *,int) ;
 int stub14 (int *,int *,int const*,int *,int) ;
 int stub15 (int *,int *,int const*,int *,int) ;
 int stub16 (int *,int *,int const*,int *,int) ;
 int stub2 (int *,int *) ;
 int stub3 (int *) ;
 int stub4 (TYPE_2__*,int *,int *) ;
 int stub5 (TYPE_2__*,int *,int *) ;
 int stub6 (int *,int *,int *) ;
 int stub7 (int *,int *,int const*,int) ;
 int stub8 (int *,int *,int const*,int *,int) ;
 int stub9 (int *,int *,int const*,int *,int) ;

__attribute__((used)) static void sbr_qmf_synthesis(FFTContext *mdct,



                              SBRDSPContext *sbrdsp, AVFloatDSPContext *dsp,

                              INTFLOAT *out, INTFLOAT X[2][38][64],
                              INTFLOAT mdct_buf[2][64],
                              INTFLOAT *v0, int *v_off, const unsigned int div)
{
    int i, n;
    const INTFLOAT *sbr_qmf_window = div ? sbr_qmf_window_ds : sbr_qmf_window_us;
    const int step = 128 >> div;
    INTFLOAT *v;
    for (i = 0; i < 32; i++) {
        if (*v_off < step) {
            int saved_samples = (1280 - 128) >> div;
            memcpy(&v0[SBR_SYNTHESIS_BUF_SIZE - saved_samples], v0, saved_samples * sizeof(INTFLOAT));
            *v_off = SBR_SYNTHESIS_BUF_SIZE - saved_samples - step;
        } else {
            *v_off -= step;
        }
        v = v0 + *v_off;
        if (div) {
            for (n = 0; n < 32; n++) {
                X[0][i][ n] = -X[0][i][n];
                X[0][i][32+n] = X[1][i][31-n];
            }
            mdct->imdct_half(mdct, mdct_buf[0], X[0][i]);
            sbrdsp->qmf_deint_neg(v, mdct_buf[0]);
        } else {
            sbrdsp->neg_odd_64(X[1][i]);
            mdct->imdct_half(mdct, mdct_buf[0], X[0][i]);
            mdct->imdct_half(mdct, mdct_buf[1], X[1][i]);
            sbrdsp->qmf_deint_bfly(v, mdct_buf[1], mdct_buf[0]);
        }
        dsp->vector_fmul (out, v , sbr_qmf_window , 64 >> div);
        dsp->vector_fmul_add(out, v + ( 192 >> div), sbr_qmf_window + ( 64 >> div), out , 64 >> div);
        dsp->vector_fmul_add(out, v + ( 256 >> div), sbr_qmf_window + (128 >> div), out , 64 >> div);
        dsp->vector_fmul_add(out, v + ( 448 >> div), sbr_qmf_window + (192 >> div), out , 64 >> div);
        dsp->vector_fmul_add(out, v + ( 512 >> div), sbr_qmf_window + (256 >> div), out , 64 >> div);
        dsp->vector_fmul_add(out, v + ( 704 >> div), sbr_qmf_window + (320 >> div), out , 64 >> div);
        dsp->vector_fmul_add(out, v + ( 768 >> div), sbr_qmf_window + (384 >> div), out , 64 >> div);
        dsp->vector_fmul_add(out, v + ( 960 >> div), sbr_qmf_window + (448 >> div), out , 64 >> div);
        dsp->vector_fmul_add(out, v + (1024 >> div), sbr_qmf_window + (512 >> div), out , 64 >> div);
        dsp->vector_fmul_add(out, v + (1216 >> div), sbr_qmf_window + (576 >> div), out , 64 >> div);
        out += 64 >> div;
    }
}
