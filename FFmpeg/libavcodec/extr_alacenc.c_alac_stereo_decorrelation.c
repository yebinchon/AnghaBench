
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {int** sample_buf; int frame_size; int interlacing_leftweight; int interlacing_shift; } ;
typedef TYPE_1__ AlacEncodeContext ;





 int estimate_stereo_mode (int*,int*,int) ;

__attribute__((used)) static void alac_stereo_decorrelation(AlacEncodeContext *s)
{
    int32_t *left = s->sample_buf[0], *right = s->sample_buf[1];
    int i, mode, n = s->frame_size;
    int32_t tmp;

    mode = estimate_stereo_mode(left, right, n);

    switch (mode) {
    case 130:
        s->interlacing_leftweight = 0;
        s->interlacing_shift = 0;
        break;
    case 129:
        for (i = 0; i < n; i++)
            right[i] = left[i] - right[i];
        s->interlacing_leftweight = 1;
        s->interlacing_shift = 0;
        break;
    case 128:
        for (i = 0; i < n; i++) {
            tmp = right[i];
            right[i] = left[i] - right[i];
            left[i] = tmp + (right[i] >> 31);
        }
        s->interlacing_leftweight = 1;
        s->interlacing_shift = 31;
        break;
    default:
        for (i = 0; i < n; i++) {
            tmp = left[i];
            left[i] = (tmp + right[i]) >> 1;
            right[i] = tmp - right[i];
        }
        s->interlacing_leftweight = 1;
        s->interlacing_shift = 1;
        break;
    }
}
