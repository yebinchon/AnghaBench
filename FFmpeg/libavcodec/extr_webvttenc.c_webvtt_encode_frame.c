
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_14__ ;


struct TYPE_16__ {int len; int str; } ;
struct TYPE_18__ {TYPE_14__ buffer; int ass_ctx; } ;
typedef TYPE_2__ WebVTTContext ;
struct TYPE_21__ {int text; int style; } ;
struct TYPE_20__ {TYPE_2__* priv_data; } ;
struct TYPE_19__ {int num_rects; TYPE_1__** rects; } ;
struct TYPE_17__ {char* ass; scalar_t__ type; } ;
typedef TYPE_3__ AVSubtitle ;
typedef TYPE_4__ AVCodecContext ;
typedef TYPE_5__ ASSDialog ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 int ENOSYS ;
 scalar_t__ SUBTITLE_ASS ;
 int av_bprint_clear (TYPE_14__*) ;
 int av_bprint_is_complete (TYPE_14__*) ;
 int av_log (TYPE_4__*,int ,char*) ;
 int ff_ass_free_dialog (TYPE_5__**) ;
 TYPE_5__* ff_ass_split_dialog (int ,char const*,int ,int*) ;
 TYPE_5__* ff_ass_split_dialog2 (int ,char const*) ;
 int ff_ass_split_override_codes (int *,TYPE_2__*,int ) ;
 int memcpy (unsigned char*,int ,int) ;
 int strncmp (char const*,char*,int) ;
 int webvtt_callbacks ;
 int webvtt_style_apply (TYPE_2__*,int ) ;

__attribute__((used)) static int webvtt_encode_frame(AVCodecContext *avctx,
                               unsigned char *buf, int bufsize, const AVSubtitle *sub)
{
    WebVTTContext *s = avctx->priv_data;
    ASSDialog *dialog;
    int i;

    av_bprint_clear(&s->buffer);

    for (i=0; i<sub->num_rects; i++) {
        const char *ass = sub->rects[i]->ass;

        if (sub->rects[i]->type != SUBTITLE_ASS) {
            av_log(avctx, AV_LOG_ERROR, "Only SUBTITLE_ASS type supported.\n");
            return AVERROR(ENOSYS);
        }
            dialog = ff_ass_split_dialog2(s->ass_ctx, ass);
            if (!dialog)
                return AVERROR(ENOMEM);
            webvtt_style_apply(s, dialog->style);
            ff_ass_split_override_codes(&webvtt_callbacks, s, dialog->text);
            ff_ass_free_dialog(&dialog);



    }

    if (!av_bprint_is_complete(&s->buffer))
        return AVERROR(ENOMEM);
    if (!s->buffer.len)
        return 0;

    if (s->buffer.len > bufsize) {
        av_log(avctx, AV_LOG_ERROR, "Buffer too small for ASS event.\n");
        return -1;
    }
    memcpy(buf, s->buffer.str, s->buffer.len);

    return s->buffer.len;
}
