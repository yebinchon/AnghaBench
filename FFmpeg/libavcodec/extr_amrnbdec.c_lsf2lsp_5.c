
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint16_t ;
typedef int int16_t ;
struct TYPE_5__ {size_t* lsf; } ;
struct TYPE_6__ {float* prev_lsf_r; int * lsp; int prev_lsp_sub4; TYPE_1__ frame; } ;
typedef TYPE_2__ AMRContext ;


 int LP_FILTER_ORDER ;
 float LSF_R_FAC ;
 float PRED_FAC_MODE_12k2 ;
 int lsf2lsp_for_mode12k2 (TYPE_2__*,int ,float*,int const**,int,size_t const,int) ;
 int ** lsf_5_1 ;
 int ** lsf_5_2 ;
 int ** lsf_5_3 ;
 int ** lsf_5_4 ;
 int ** lsf_5_5 ;
 float* lsf_5_mean ;
 int weighted_vector_sumd (int ,int ,int ,double,double,int) ;

__attribute__((used)) static void lsf2lsp_5(AMRContext *p)
{
    const uint16_t *lsf_param = p->frame.lsf;
    float lsf_no_r[LP_FILTER_ORDER];
    const int16_t *lsf_quantizer[5];
    int i;

    lsf_quantizer[0] = lsf_5_1[lsf_param[0]];
    lsf_quantizer[1] = lsf_5_2[lsf_param[1]];
    lsf_quantizer[2] = lsf_5_3[lsf_param[2] >> 1];
    lsf_quantizer[3] = lsf_5_4[lsf_param[3]];
    lsf_quantizer[4] = lsf_5_5[lsf_param[4]];

    for (i = 0; i < LP_FILTER_ORDER; i++)
        lsf_no_r[i] = p->prev_lsf_r[i] * LSF_R_FAC * PRED_FAC_MODE_12k2 + lsf_5_mean[i];

    lsf2lsp_for_mode12k2(p, p->lsp[1], lsf_no_r, lsf_quantizer, 0, lsf_param[2] & 1, 0);
    lsf2lsp_for_mode12k2(p, p->lsp[3], lsf_no_r, lsf_quantizer, 2, lsf_param[2] & 1, 1);


    weighted_vector_sumd(p->lsp[0], p->prev_lsp_sub4, p->lsp[1], 0.5, 0.5, LP_FILTER_ORDER);
    weighted_vector_sumd(p->lsp[2], p->lsp[1] , p->lsp[3], 0.5, 0.5, LP_FILTER_ORDER);
}
