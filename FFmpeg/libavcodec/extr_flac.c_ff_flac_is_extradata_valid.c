
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef enum FLACExtradataFormat { ____Placeholder_FLACExtradataFormat } FLACExtradataFormat ;
struct TYPE_4__ {scalar_t__ extradata_size; int * extradata; } ;
typedef TYPE_1__ AVCodecContext ;


 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 scalar_t__ AV_RL32 (int *) ;
 int FLAC_EXTRADATA_FORMAT_FULL_HEADER ;
 int FLAC_EXTRADATA_FORMAT_STREAMINFO ;
 scalar_t__ FLAC_STREAMINFO_SIZE ;
 scalar_t__ MKTAG (float,char,char,char) ;
 int av_log (TYPE_1__*,int ,char*,...) ;

int ff_flac_is_extradata_valid(AVCodecContext *avctx,
                               enum FLACExtradataFormat *format,
                               uint8_t **streaminfo_start)
{
    if (!avctx->extradata || avctx->extradata_size < FLAC_STREAMINFO_SIZE) {
        av_log(avctx, AV_LOG_ERROR, "extradata NULL or too small.\n");
        return 0;
    }
    if (AV_RL32(avctx->extradata) != MKTAG('f','L','a','C')) {

        if (avctx->extradata_size != FLAC_STREAMINFO_SIZE) {
            av_log(avctx, AV_LOG_WARNING, "extradata contains %d bytes too many.\n",
                   FLAC_STREAMINFO_SIZE-avctx->extradata_size);
        }
        *format = FLAC_EXTRADATA_FORMAT_STREAMINFO;
        *streaminfo_start = avctx->extradata;
    } else {
        if (avctx->extradata_size < 8+FLAC_STREAMINFO_SIZE) {
            av_log(avctx, AV_LOG_ERROR, "extradata too small.\n");
            return 0;
        }
        *format = FLAC_EXTRADATA_FORMAT_FULL_HEADER;
        *streaminfo_start = &avctx->extradata[8];
    }
    return 1;
}
