
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int UInt32 ;
struct TYPE_8__ {int * extradata; int converter; } ;
struct TYPE_7__ {TYPE_2__* priv_data; } ;
typedef scalar_t__ OSStatus ;
typedef TYPE_1__ AVCodecContext ;
typedef TYPE_2__ ATDecodeContext ;


 int AVERROR (int ) ;
 int AV_LOG_WARNING ;
 scalar_t__ AudioConverterSetProperty (int ,int ,int ,int *) ;
 int ENOMEM ;
 int av_free (int *) ;
 int av_log (TYPE_1__*,int ,char*,int) ;
 int * ffat_get_magic_cookie (TYPE_1__*,int *) ;
 scalar_t__ ffat_usable_extradata (TYPE_1__*) ;
 int kAudioConverterDecompressionMagicCookie ;

__attribute__((used)) static int ffat_set_extradata(AVCodecContext *avctx)
{
    ATDecodeContext *at = avctx->priv_data;
    if (ffat_usable_extradata(avctx)) {
        OSStatus status;
        UInt32 cookie_size;
        uint8_t *cookie = ffat_get_magic_cookie(avctx, &cookie_size);
        if (!cookie)
            return AVERROR(ENOMEM);

        status = AudioConverterSetProperty(at->converter,
                                           kAudioConverterDecompressionMagicCookie,
                                           cookie_size, cookie);
        if (status != 0)
            av_log(avctx, AV_LOG_WARNING, "AudioToolbox cookie error: %i\n", (int)status);

        if (cookie != at->extradata)
            av_free(cookie);
    }
    return 0;
}
