
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int avctx; int gb; } ;
typedef TYPE_1__ GifState ;
typedef int AVFrame ;


 int AVERROR_EOF ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_DEBUG ;



 int av_log (int ,int ,char*,int,int) ;
 int bytestream2_get_byte (int *) ;
 scalar_t__ bytestream2_get_bytes_left (int *) ;
 int gif_read_extension (TYPE_1__*) ;
 int gif_read_image (TYPE_1__*,int *) ;

__attribute__((used)) static int gif_parse_next_image(GifState *s, AVFrame *frame)
{
    while (bytestream2_get_bytes_left(&s->gb) > 0) {
        int code = bytestream2_get_byte(&s->gb);
        int ret;

        av_log(s->avctx, AV_LOG_DEBUG, "code=%02x '%c'\n", code, code);

        switch (code) {
        case 129:
            return gif_read_image(s, frame);
        case 130:
            if ((ret = gif_read_extension(s)) < 0)
                return ret;
            break;
        case 128:

            return AVERROR_EOF;
        default:

            return AVERROR_INVALIDDATA;
        }
    }
    return AVERROR_EOF;
}
