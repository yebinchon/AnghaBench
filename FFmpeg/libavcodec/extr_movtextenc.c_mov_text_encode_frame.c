
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_15__ ;
typedef struct TYPE_17__ TYPE_13__ ;


struct TYPE_23__ {int text; } ;
struct TYPE_22__ {TYPE_2__* priv_data; } ;
struct TYPE_21__ {int num_rects; TYPE_1__** rects; } ;
struct TYPE_18__ {int len; int str; } ;
struct TYPE_20__ {TYPE_15__ buffer; scalar_t__ byte_count; int ass_ctx; scalar_t__ style_entries; scalar_t__ box_flags; scalar_t__ count; scalar_t__ text_pos; } ;
struct TYPE_19__ {char* ass; scalar_t__ type; } ;
struct TYPE_17__ {int type; int (* encode ) (TYPE_2__*,int ) ;} ;
typedef TYPE_2__ MovTextContext ;
typedef TYPE_3__ AVSubtitle ;
typedef TYPE_4__ AVCodecContext ;
typedef TYPE_5__ ASSDialog ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int AV_WB16 (unsigned char*,scalar_t__) ;
 int EINVAL ;
 int ENOMEM ;
 int ENOSYS ;
 scalar_t__ SUBTITLE_ASS ;
 int av_bprint_clear (TYPE_15__*) ;
 int av_bprint_is_complete (TYPE_15__*) ;
 int av_log (TYPE_4__*,int ,char*) ;
 size_t box_count ;
 TYPE_13__* box_types ;
 int ff_ass_free_dialog (TYPE_5__**) ;
 TYPE_5__* ff_ass_split_dialog (int ,char const*,int ,int*) ;
 TYPE_5__* ff_ass_split_dialog2 (int ,char const*) ;
 int ff_ass_split_override_codes (int *,TYPE_2__*,int ) ;
 int memcpy (unsigned char*,int ,int) ;
 int mov_text_callbacks ;
 int strncmp (char const*,char*,int) ;
 int stub1 (TYPE_2__*,int ) ;

__attribute__((used)) static int mov_text_encode_frame(AVCodecContext *avctx, unsigned char *buf,
                                 int bufsize, const AVSubtitle *sub)
{
    MovTextContext *s = avctx->priv_data;
    ASSDialog *dialog;
    int i, length;
    size_t j;

    s->byte_count = 0;
    s->text_pos = 0;
    s->count = 0;
    s->box_flags = 0;
    s->style_entries = 0;
    for (i = 0; i < sub->num_rects; i++) {
        const char *ass = sub->rects[i]->ass;

        if (sub->rects[i]->type != SUBTITLE_ASS) {
            av_log(avctx, AV_LOG_ERROR, "Only SUBTITLE_ASS type supported.\n");
            return AVERROR(ENOSYS);
        }
            dialog = ff_ass_split_dialog2(s->ass_ctx, ass);
            if (!dialog)
                return AVERROR(ENOMEM);
            ff_ass_split_override_codes(&mov_text_callbacks, s, dialog->text);
            ff_ass_free_dialog(&dialog);




        for (j = 0; j < box_count; j++) {
            box_types[j].encode(s, box_types[j].type);
        }
    }

    AV_WB16(buf, s->byte_count);
    buf += 2;

    if (!av_bprint_is_complete(&s->buffer)) {
        length = AVERROR(ENOMEM);
        goto exit;
    }

    if (!s->buffer.len) {
        length = 0;
        goto exit;
    }

    if (s->buffer.len > bufsize - 3) {
        av_log(avctx, AV_LOG_ERROR, "Buffer too small for ASS event.\n");
        length = AVERROR(EINVAL);
        goto exit;
    }

    memcpy(buf, s->buffer.str, s->buffer.len);
    length = s->buffer.len + 2;

exit:
    av_bprint_clear(&s->buffer);
    return length;
}
