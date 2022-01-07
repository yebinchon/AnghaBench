
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef char const uint8_t ;
typedef int uint32_t ;
struct TYPE_17__ {int* linesize; int palette_has_changed; scalar_t__* data; int pict_type; } ;
struct TYPE_16__ {int height; int width; int frame_number; TYPE_1__* priv_data; } ;
struct TYPE_15__ {char* data; int size; } ;
struct TYPE_14__ {int first_frame; int state; int x; size_t nb_args; int* args; TYPE_6__* frame; } ;
typedef TYPE_1__ AnsiContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVCodecContext ;


 int AVPALETTE_SIZE ;
 int AV_LOG_WARNING ;
 int AV_PICTURE_TYPE_I ;
 int FFMAX (int,int ) ;
 int FONT_WIDTH ;
 size_t MAX_NB_ARGS ;




 int av_frame_ref (void*,TYPE_6__*) ;
 int av_log (TYPE_3__*,int ,char*,size_t) ;
 int draw_char (TYPE_3__*,char const) ;
 int erase_screen (TYPE_3__*) ;
 int execute_code (TYPE_3__*,char const) ;
 int ff_reget_buffer (TYPE_3__*,TYPE_6__*,int ) ;
 int hscroll (TYPE_3__*) ;
 int memset (scalar_t__,int ,int ) ;
 int set_palette (int *) ;

__attribute__((used)) static int decode_frame(AVCodecContext *avctx,
                            void *data, int *got_frame,
                            AVPacket *avpkt)
{
    AnsiContext *s = avctx->priv_data;
    uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    const uint8_t *buf_end = buf+buf_size;
    int ret, i, count;

    if ((ret = ff_reget_buffer(avctx, s->frame, 0)) < 0)
        return ret;
    if (!avctx->frame_number) {
        for (i=0; i<avctx->height; i++)
            memset(s->frame->data[0]+ i*s->frame->linesize[0], 0, avctx->width);
        memset(s->frame->data[1], 0, AVPALETTE_SIZE);
    }

    s->frame->pict_type = AV_PICTURE_TYPE_I;
    s->frame->palette_has_changed = 1;
    set_palette((uint32_t *)s->frame->data[1]);
    if (!s->first_frame) {
        erase_screen(avctx);
        s->first_frame = 1;
    }

    while(buf < buf_end) {
        switch(s->state) {
        case 128:
            switch (buf[0]) {
            case 0x00:
            case 0x07:
            case 0x1A:

                break;
            case 0x08:
                s->x = FFMAX(s->x - 1, 0);
                break;
            case 0x09:
                i = s->x / FONT_WIDTH;
                count = ((i + 8) & ~7) - i;
                for (i = 0; i < count; i++)
                    draw_char(avctx, ' ');
                break;
            case 0x0A:
                hscroll(avctx);
            case 0x0D:
                s->x = 0;
                break;
            case 0x0C:
                erase_screen(avctx);
                break;
            case 0x1B:
                s->state = 130;
                break;
            default:
                draw_char(avctx, buf[0]);
            }
            break;
        case 130:
            if (buf[0] == '[') {
                s->state = 131;
                s->nb_args = 0;
                s->args[0] = -1;
            } else {
                s->state = 128;
                draw_char(avctx, 0x1B);
                continue;
            }
            break;
        case 131:
            switch(buf[0]) {
            case '0': case '1': case '2': case '3': case '4':
            case '5': case '6': case '7': case '8': case '9':
                if (s->nb_args < MAX_NB_ARGS && s->args[s->nb_args] < 6553)
                    s->args[s->nb_args] = FFMAX(s->args[s->nb_args], 0) * 10 + buf[0] - '0';
                break;
            case ';':
                s->nb_args++;
                if (s->nb_args < MAX_NB_ARGS)
                    s->args[s->nb_args] = 0;
                break;
            case 'M':
                s->state = 129;
                break;
            case '=': case '?':

                break;
            default:
                if (s->nb_args > MAX_NB_ARGS)
                    av_log(avctx, AV_LOG_WARNING, "args overflow (%i)\n", s->nb_args);
                if (s->nb_args < MAX_NB_ARGS && s->args[s->nb_args] >= 0)
                    s->nb_args++;
                if ((ret = execute_code(avctx, buf[0])) < 0)
                    return ret;
                s->state = 128;
            }
            break;
        case 129:
            if (buf[0] == 0x0E || buf[0] == 0x1B)
                s->state = 128;

            break;
        }
        buf++;
    }

    *got_frame = 1;
    if ((ret = av_frame_ref(data, s->frame)) < 0)
        return ret;
    return buf_size;
}
