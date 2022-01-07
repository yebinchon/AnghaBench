
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mclms_order; int mclms_scaling; int num_channels; int* mclms_coeffs; int* mclms_coeffs_cur; int gb; } ;
typedef TYPE_1__ WmallDecodeCtx ;


 int av_log2 (int) ;
 int get_bits (int *,int) ;
 scalar_t__ get_bits1 (int *) ;
 int get_bitsz (int *,int) ;

__attribute__((used)) static void decode_mclms(WmallDecodeCtx *s)
{
    s->mclms_order = (get_bits(&s->gb, 4) + 1) * 2;
    s->mclms_scaling = get_bits(&s->gb, 4);
    if (get_bits1(&s->gb)) {
        int i, send_coef_bits;
        int cbits = av_log2(s->mclms_scaling + 1);
        if (1 << cbits < s->mclms_scaling + 1)
            cbits++;

        send_coef_bits = get_bitsz(&s->gb, cbits) + 2;

        for (i = 0; i < s->mclms_order * s->num_channels * s->num_channels; i++)
            s->mclms_coeffs[i] = get_bits(&s->gb, send_coef_bits);

        for (i = 0; i < s->num_channels; i++) {
            int c;
            for (c = 0; c < i; c++)
                s->mclms_coeffs_cur[i * s->num_channels + c] = get_bits(&s->gb, send_coef_bits);
        }
    }
}
