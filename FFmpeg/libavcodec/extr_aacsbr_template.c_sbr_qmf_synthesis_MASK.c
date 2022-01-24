#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  (* vector_fmul_add ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ;int /*<<< orphan*/  (* vector_fmul ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ;} ;
struct TYPE_12__ {int /*<<< orphan*/  (* imdct_half ) (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
struct TYPE_11__ {int /*<<< orphan*/  (* qmf_deint_bfly ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* neg_odd_64 ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* qmf_deint_neg ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__ SBRDSPContext ;
typedef  int /*<<< orphan*/  INTFLOAT ;
typedef  TYPE_2__ FFTContext ;
typedef  TYPE_3__ AVFloatDSPContext ;
typedef  int /*<<< orphan*/  AVFixedDSPContext ;

/* Variables and functions */
 int SBR_SYNTHESIS_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * sbr_qmf_window_ds ; 
 int /*<<< orphan*/ * sbr_qmf_window_us ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC17(FFTContext *mdct,
#if USE_FIXED
                              SBRDSPContext *sbrdsp, AVFixedDSPContext *dsp,
#else
                              SBRDSPContext *sbrdsp, AVFloatDSPContext *dsp,
#endif /* USE_FIXED */
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
            FUNC0(&v0[SBR_SYNTHESIS_BUF_SIZE - saved_samples], v0, saved_samples * sizeof(INTFLOAT));
            *v_off = SBR_SYNTHESIS_BUF_SIZE - saved_samples - step;
        } else {
            *v_off -= step;
        }
        v = v0 + *v_off;
        if (div) {
            for (n = 0; n < 32; n++) {
                X[0][i][   n] = -X[0][i][n];
                X[0][i][32+n] =  X[1][i][31-n];
            }
            mdct->imdct_half(mdct, mdct_buf[0], X[0][i]);
            sbrdsp->qmf_deint_neg(v, mdct_buf[0]);
        } else {
            sbrdsp->neg_odd_64(X[1][i]);
            mdct->imdct_half(mdct, mdct_buf[0], X[0][i]);
            mdct->imdct_half(mdct, mdct_buf[1], X[1][i]);
            sbrdsp->qmf_deint_bfly(v, mdct_buf[1], mdct_buf[0]);
        }
        dsp->vector_fmul    (out, v                , sbr_qmf_window                       , 64 >> div);
        dsp->vector_fmul_add(out, v + ( 192 >> div), sbr_qmf_window + ( 64 >> div), out   , 64 >> div);
        dsp->vector_fmul_add(out, v + ( 256 >> div), sbr_qmf_window + (128 >> div), out   , 64 >> div);
        dsp->vector_fmul_add(out, v + ( 448 >> div), sbr_qmf_window + (192 >> div), out   , 64 >> div);
        dsp->vector_fmul_add(out, v + ( 512 >> div), sbr_qmf_window + (256 >> div), out   , 64 >> div);
        dsp->vector_fmul_add(out, v + ( 704 >> div), sbr_qmf_window + (320 >> div), out   , 64 >> div);
        dsp->vector_fmul_add(out, v + ( 768 >> div), sbr_qmf_window + (384 >> div), out   , 64 >> div);
        dsp->vector_fmul_add(out, v + ( 960 >> div), sbr_qmf_window + (448 >> div), out   , 64 >> div);
        dsp->vector_fmul_add(out, v + (1024 >> div), sbr_qmf_window + (512 >> div), out   , 64 >> div);
        dsp->vector_fmul_add(out, v + (1216 >> div), sbr_qmf_window + (576 >> div), out   , 64 >> div);
        out += 64 >> div;
    }
}