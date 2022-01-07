
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {int flags; int flags2; int extradata_size; int const* extradata; } ;
struct TYPE_8__ {TYPE_1__* parser; } ;
struct TYPE_7__ {int (* split ) (TYPE_3__*,int const*,int) ;} ;
typedef TYPE_2__ AVCodecParserContext ;
typedef TYPE_3__ AVCodecContext ;


 int AVERROR (int ) ;
 int AV_CODEC_FLAG2_LOCAL_HEADER ;
 int AV_CODEC_FLAG_GLOBAL_HEADER ;
 int AV_INPUT_BUFFER_PADDING_SIZE ;
 int ENOMEM ;
 int * av_malloc (int) ;
 int memcpy (int *,int const*,int) ;
 int stub1 (TYPE_3__*,int const*,int) ;

int av_parser_change(AVCodecParserContext *s, AVCodecContext *avctx,
                     uint8_t **poutbuf, int *poutbuf_size,
                     const uint8_t *buf, int buf_size, int keyframe)
{
    if (s && s->parser->split) {
        if (avctx->flags & AV_CODEC_FLAG_GLOBAL_HEADER ||
            avctx->flags2 & AV_CODEC_FLAG2_LOCAL_HEADER) {
            int i = s->parser->split(avctx, buf, buf_size);
            buf += i;
            buf_size -= i;
        }
    }


    *poutbuf = (uint8_t *) buf;
    *poutbuf_size = buf_size;
    if (avctx->extradata) {
        if (keyframe && (avctx->flags2 & AV_CODEC_FLAG2_LOCAL_HEADER)) {
            int size = buf_size + avctx->extradata_size;

            *poutbuf_size = size;
            *poutbuf = av_malloc(size + AV_INPUT_BUFFER_PADDING_SIZE);
            if (!*poutbuf)
                return AVERROR(ENOMEM);

            memcpy(*poutbuf, avctx->extradata, avctx->extradata_size);
            memcpy(*poutbuf + avctx->extradata_size, buf,
                   buf_size + AV_INPUT_BUFFER_PADDING_SIZE);
            return 1;
        }
    }

    return 0;
}
