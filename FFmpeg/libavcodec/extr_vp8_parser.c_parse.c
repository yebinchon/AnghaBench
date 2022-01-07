
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {unsigned int profile; } ;
struct TYPE_6__ {int key_frame; unsigned int width; unsigned int height; void* coded_height; void* coded_width; int picture_structure; int field_order; int format; int pict_type; } ;
typedef TYPE_1__ AVCodecParserContext ;
typedef TYPE_2__ AVCodecContext ;


 int AV_FIELD_PROGRESSIVE ;
 int AV_LOG_ERROR ;
 int AV_PICTURE_STRUCTURE_FRAME ;
 int AV_PICTURE_TYPE_I ;
 int AV_PICTURE_TYPE_P ;
 int AV_PIX_FMT_YUV420P ;
 int AV_RL16 (int const*) ;
 unsigned int AV_RL24 (int const*) ;
 void* FFALIGN (unsigned int,int) ;
 int av_log (TYPE_2__*,int ,char*,unsigned int) ;

__attribute__((used)) static int parse(AVCodecParserContext *s,
                 AVCodecContext *avctx,
                 const uint8_t **poutbuf, int *poutbuf_size,
                 const uint8_t *buf, int buf_size)
{
    unsigned int frame_type;
    unsigned int profile;

    *poutbuf = buf;
    *poutbuf_size = buf_size;

    if (buf_size < 3)
        return buf_size;

    frame_type = buf[0] & 1;
    profile = (buf[0] >> 1) & 7;
    if (profile > 3) {
        av_log(avctx, AV_LOG_ERROR, "Invalid profile %u.\n", profile);
        return buf_size;
    }

    avctx->profile = profile;
    s->key_frame = frame_type == 0;
    s->pict_type = frame_type ? AV_PICTURE_TYPE_P : AV_PICTURE_TYPE_I;
    s->format = AV_PIX_FMT_YUV420P;
    s->field_order = AV_FIELD_PROGRESSIVE;
    s->picture_structure = AV_PICTURE_STRUCTURE_FRAME;

    if (frame_type == 0) {
        unsigned int sync_code;
        unsigned int width, height;

        if (buf_size < 10)
            return buf_size;

        sync_code = AV_RL24(buf + 3);
        if (sync_code != 0x2a019d) {
            av_log(avctx, AV_LOG_ERROR, "Invalid sync code %06x.\n", sync_code);
            return buf_size;
        }

        width = AV_RL16(buf + 6) & 0x3fff;
        height = AV_RL16(buf + 8) & 0x3fff;

        s->width = width;
        s->height = height;
        s->coded_width = FFALIGN(width, 16);
        s->coded_height = FFALIGN(height, 16);
    }

    return buf_size;
}
