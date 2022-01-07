
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int in_channels; int out_channels; int (* downmix ) (float**,float**,int) ;} ;
typedef TYPE_1__ AC3DSPContext ;


 scalar_t__ ARCH_X86 ;
 int ac3_downmix_5_to_1_symmetric_c (float**,float**,int) ;
 int ac3_downmix_5_to_2_symmetric_c (float**,float**,int) ;
 int ac3_downmix_c (float**,float**,int,int,int) ;
 int ff_ac3dsp_set_downmix_x86 (TYPE_1__*) ;
 int stub1 (float**,float**,int) ;

void ff_ac3dsp_downmix(AC3DSPContext *c, float **samples, float **matrix,
                       int out_ch, int in_ch, int len)
{
    if (c->in_channels != in_ch || c->out_channels != out_ch) {
        int **matrix_cmp = (int **)matrix;

        c->in_channels = in_ch;
        c->out_channels = out_ch;
        c->downmix = ((void*)0);

        if (in_ch == 5 && out_ch == 2 &&
            !(matrix_cmp[1][0] | matrix_cmp[0][2] |
              matrix_cmp[1][3] | matrix_cmp[0][4] |
             (matrix_cmp[0][1] ^ matrix_cmp[1][1]) |
             (matrix_cmp[0][0] ^ matrix_cmp[1][2]))) {
            c->downmix = ac3_downmix_5_to_2_symmetric_c;
        } else if (in_ch == 5 && out_ch == 1 &&
                   matrix_cmp[0][0] == matrix_cmp[0][2] &&
                   matrix_cmp[0][3] == matrix_cmp[0][4]) {
            c->downmix = ac3_downmix_5_to_1_symmetric_c;
        }

        if (ARCH_X86)
            ff_ac3dsp_set_downmix_x86(c);
    }

    if (c->downmix)
        c->downmix(samples, matrix, len);
    else
        ac3_downmix_c(samples, matrix, out_ch, in_ch, len);
}
