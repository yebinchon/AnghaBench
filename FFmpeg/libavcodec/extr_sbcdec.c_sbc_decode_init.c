
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* priv_data; } ;
struct TYPE_7__ {int** offset; int V; } ;
struct TYPE_6__ {int crc_ctx; } ;
struct TYPE_8__ {TYPE_2__ dsp; TYPE_1__ frame; } ;
typedef TYPE_3__ SBCDecContext ;
typedef TYPE_4__ AVCodecContext ;


 int AV_CRC_8_EBU ;
 int FF_ARRAY_ELEMS (int*) ;
 int av_crc_get_table (int ) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static int sbc_decode_init(AVCodecContext *avctx)
{
    SBCDecContext *sbc = avctx->priv_data;
    int i, ch;

    sbc->frame.crc_ctx = av_crc_get_table(AV_CRC_8_EBU);

    memset(sbc->dsp.V, 0, sizeof(sbc->dsp.V));
    for (ch = 0; ch < 2; ch++)
        for (i = 0; i < FF_ARRAY_ELEMS(sbc->dsp.offset[0]); i++)
            sbc->dsp.offset[ch][i] = (10 * i + 10);
    return 0;
}
