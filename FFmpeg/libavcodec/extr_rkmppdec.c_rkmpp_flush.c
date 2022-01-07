
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {TYPE_4__* priv_data; } ;
struct TYPE_11__ {TYPE_1__* decoder_ref; } ;
struct TYPE_10__ {int first_packet; int ctx; TYPE_2__* mpi; } ;
struct TYPE_9__ {int (* reset ) (int ) ;} ;
struct TYPE_8__ {scalar_t__ data; } ;
typedef TYPE_3__ RKMPPDecoder ;
typedef TYPE_4__ RKMPPDecodeContext ;
typedef TYPE_5__ AVCodecContext ;


 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int MPP_NOK ;
 int MPP_OK ;
 int av_log (TYPE_5__*,int ,char*,...) ;
 int stub1 (int ) ;

__attribute__((used)) static void rkmpp_flush(AVCodecContext *avctx)
{
    RKMPPDecodeContext *rk_context = avctx->priv_data;
    RKMPPDecoder *decoder = (RKMPPDecoder *)rk_context->decoder_ref->data;
    int ret = MPP_NOK;

    av_log(avctx, AV_LOG_DEBUG, "Flush.\n");

    ret = decoder->mpi->reset(decoder->ctx);
    if (ret == MPP_OK) {
        decoder->first_packet = 1;
    } else
        av_log(avctx, AV_LOG_ERROR, "Failed to reset MPI (code = %d)\n", ret);
}
