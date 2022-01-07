
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t int16_t ;


 int LSFQ_DIFF_MIN ;
 int LSFQ_MAX ;
 int LSFQ_MIN ;
 size_t MA_NP ;
 size_t** cb_lsp_1st ;
 size_t** cb_lsp_2nd ;
 size_t*** cb_ma_predictor ;
 size_t** cb_ma_predictor_sum ;
 int ff_acelp_reorder_lsf (size_t*,int ,int ,int ,int) ;

__attribute__((used)) static void lsf_decode(int16_t* lsfq, int16_t* past_quantizer_outputs[MA_NP + 1],
                       int16_t ma_predictor,
                       int16_t vq_1st, int16_t vq_2nd_low, int16_t vq_2nd_high)
{
    int i,j;
    static const uint8_t min_distance[2]={10, 5};
    int16_t* quantizer_output = past_quantizer_outputs[MA_NP];

    for (i = 0; i < 5; i++) {
        quantizer_output[i] = cb_lsp_1st[vq_1st][i ] + cb_lsp_2nd[vq_2nd_low ][i ];
        quantizer_output[i + 5] = cb_lsp_1st[vq_1st][i + 5] + cb_lsp_2nd[vq_2nd_high][i + 5];
    }

    for (j = 0; j < 2; j++) {
        for (i = 1; i < 10; i++) {
            int diff = (quantizer_output[i - 1] - quantizer_output[i] + min_distance[j]) >> 1;
            if (diff > 0) {
                quantizer_output[i - 1] -= diff;
                quantizer_output[i ] += diff;
            }
        }
    }

    for (i = 0; i < 10; i++) {
        int sum = quantizer_output[i] * cb_ma_predictor_sum[ma_predictor][i];
        for (j = 0; j < MA_NP; j++)
            sum += past_quantizer_outputs[j][i] * cb_ma_predictor[ma_predictor][j][i];

        lsfq[i] = sum >> 15;
    }

    ff_acelp_reorder_lsf(lsfq, LSFQ_DIFF_MIN, LSFQ_MIN, LSFQ_MAX, 10);
}
