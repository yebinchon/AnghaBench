
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int* CWlengthT; int* codewords; int * skipFlags; scalar_t__* bandFlagsBuf; scalar_t__* bandWidthT; int * sumLenArr; } ;
struct TYPE_5__ {int gb; } ;
typedef TYPE_1__ IMCContext ;
typedef TYPE_2__ IMCChannel ;
typedef int AVCodecContext ;


 int AV_LOG_WARNING ;
 int BANDS ;
 int av_log (int *,int ,char*,int,int,int) ;
 int* band_tab ;
 int get_bits (int *,int) ;
 int get_bits_count (int *) ;

__attribute__((used)) static void imc_get_coeffs(AVCodecContext *avctx,
                           IMCContext *q, IMCChannel *chctx)
{
    int i, j, cw_len, cw;

    for (i = 0; i < BANDS; i++) {
        if (!chctx->sumLenArr[i])
            continue;
        if (chctx->bandFlagsBuf[i] || chctx->bandWidthT[i]) {
            for (j = band_tab[i]; j < band_tab[i + 1]; j++) {
                cw_len = chctx->CWlengthT[j];
                cw = 0;

                if (cw_len && (!chctx->bandFlagsBuf[i] || !chctx->skipFlags[j])) {
                    if (get_bits_count(&q->gb) + cw_len > 512) {
                        av_log(avctx, AV_LOG_WARNING,
                            "Potential problem on band %i, coefficient %i"
                            ": cw_len=%i\n", i, j, cw_len);
                    } else
                        cw = get_bits(&q->gb, cw_len);
                }

                chctx->codewords[j] = cw;
            }
        }
    }
}
