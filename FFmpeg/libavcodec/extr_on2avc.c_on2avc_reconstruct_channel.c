
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int (* imdct_half ) (TYPE_5__*,float*,float*) ;} ;
struct TYPE_11__ {int (* imdct_half ) (TYPE_4__*,float*,float*) ;} ;
struct TYPE_10__ {scalar_t__* extended_data; } ;
struct TYPE_9__ {float** coeffs; float** delay; float* mdct_buf; float* temp; int window_type; int const prev_window_type; int short_win; TYPE_1__* fdsp; int long_win; TYPE_4__ mdct_small; TYPE_5__ mdct; } ;
struct TYPE_8__ {int (* vector_fmul_window ) (float*,float*,float*,int ,int) ;} ;
typedef TYPE_2__ On2AVCContext ;
typedef TYPE_3__ AVFrame ;


 int ON2AVC_SUBFRAME_SIZE ;




 int memcpy (float*,float*,int) ;
 int stub1 (TYPE_5__*,float*,float*) ;
 int stub10 (float*,float*,float*,int ,int) ;
 int stub11 (float*,float*,float*,int ,int) ;
 int stub12 (float*,float*,float*,int ,int) ;
 int stub2 (TYPE_4__*,float*,float*) ;
 int stub3 (float*,float*,float*,int ,int) ;
 int stub4 (float*,float*,float*,int ,int) ;
 int stub5 (float*,float*,float*,int ,int) ;
 int stub6 (float*,float*,float*,int ,int) ;
 int stub7 (float*,float*,float*,int ,int) ;
 int stub8 (float*,float*,float*,int ,int) ;
 int stub9 (float*,float*,float*,int ,int) ;

__attribute__((used)) static int on2avc_reconstruct_channel(On2AVCContext *c, int channel,
                                      AVFrame *dst, int offset)
{
    int i;
    float *out = (float*)dst->extended_data[channel] + offset;
    float *in = c->coeffs[channel];
    float *saved = c->delay[channel];
    float *buf = c->mdct_buf;
    float *temp = c->temp;

    switch (c->window_type) {
    case 129:
    case 128:
    case 130:
        c->mdct.imdct_half(&c->mdct, buf, in);
        break;
    case 131:
        for (i = 0; i < ON2AVC_SUBFRAME_SIZE; i += ON2AVC_SUBFRAME_SIZE / 8)
            c->mdct_small.imdct_half(&c->mdct_small, buf + i, in + i);
        break;
    }

    if ((c->prev_window_type == 130 ||
         c->prev_window_type == 128) &&
        (c->window_type == 130 ||
         c->window_type == 129)) {
        c->fdsp->vector_fmul_window(out, saved, buf, c->long_win, 512);
    } else {
        float *wout = out + 448;
        memcpy(out, saved, 448 * sizeof(float));

        if (c->window_type == 131) {
            c->fdsp->vector_fmul_window(wout + 0*128, saved + 448, buf + 0*128, c->short_win, 64);
            c->fdsp->vector_fmul_window(wout + 1*128, buf + 0*128 + 64, buf + 1*128, c->short_win, 64);
            c->fdsp->vector_fmul_window(wout + 2*128, buf + 1*128 + 64, buf + 2*128, c->short_win, 64);
            c->fdsp->vector_fmul_window(wout + 3*128, buf + 2*128 + 64, buf + 3*128, c->short_win, 64);
            c->fdsp->vector_fmul_window(temp, buf + 3*128 + 64, buf + 4*128, c->short_win, 64);
            memcpy(wout + 4*128, temp, 64 * sizeof(float));
        } else {
            c->fdsp->vector_fmul_window(wout, saved + 448, buf, c->short_win, 64);
            memcpy(wout + 128, buf + 64, 448 * sizeof(float));
        }
    }


    switch (c->window_type) {
    case 131:
        memcpy(saved, temp + 64, 64 * sizeof(float));
        c->fdsp->vector_fmul_window(saved + 64, buf + 4*128 + 64, buf + 5*128, c->short_win, 64);
        c->fdsp->vector_fmul_window(saved + 192, buf + 5*128 + 64, buf + 6*128, c->short_win, 64);
        c->fdsp->vector_fmul_window(saved + 320, buf + 6*128 + 64, buf + 7*128, c->short_win, 64);
        memcpy(saved + 448, buf + 7*128 + 64, 64 * sizeof(float));
        break;
    case 129:
        memcpy(saved, buf + 512, 448 * sizeof(float));
        memcpy(saved + 448, buf + 7*128 + 64, 64 * sizeof(float));
        break;
    case 128:
    case 130:
        memcpy(saved, buf + 512, 512 * sizeof(float));
        break;
    }
    return 0;
}
