
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
typedef int int16_t ;
struct TYPE_3__ {int in_channels; int out_channels; int (* downmix_fixed ) (int **,int**,int) ;} ;
typedef TYPE_1__ AC3DSPContext ;


 int ac3_downmix_5_to_1_symmetric_c_fixed (int **,int**,int) ;
 int ac3_downmix_5_to_2_symmetric_c_fixed (int **,int**,int) ;
 int ac3_downmix_c_fixed (int **,int**,int,int,int) ;
 int stub1 (int **,int**,int) ;

void ff_ac3dsp_downmix_fixed(AC3DSPContext *c, int32_t **samples, int16_t **matrix,
                             int out_ch, int in_ch, int len)
{
    if (c->in_channels != in_ch || c->out_channels != out_ch) {
        c->in_channels = in_ch;
        c->out_channels = out_ch;
        c->downmix_fixed = ((void*)0);

        if (in_ch == 5 && out_ch == 2 &&
            !(matrix[1][0] | matrix[0][2] |
              matrix[1][3] | matrix[0][4] |
             (matrix[0][1] ^ matrix[1][1]) |
             (matrix[0][0] ^ matrix[1][2]))) {
            c->downmix_fixed = ac3_downmix_5_to_2_symmetric_c_fixed;
        } else if (in_ch == 5 && out_ch == 1 &&
                   matrix[0][0] == matrix[0][2] &&
                   matrix[0][3] == matrix[0][4]) {
            c->downmix_fixed = ac3_downmix_5_to_1_symmetric_c_fixed;
        }
    }

    if (c->downmix_fixed)
        c->downmix_fixed(samples, matrix, len);
    else
        ac3_downmix_c_fixed(samples, matrix, out_ch, in_ch, len);
}
