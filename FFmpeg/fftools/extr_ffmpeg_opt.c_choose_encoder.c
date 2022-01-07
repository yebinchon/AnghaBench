
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef enum AVMediaType { ____Placeholder_AVMediaType } AVMediaType ;
struct TYPE_16__ {int name; } ;
struct TYPE_15__ {int id; } ;
struct TYPE_14__ {TYPE_8__* oformat; int url; } ;
struct TYPE_13__ {int stream_copy; int encoding_needed; TYPE_4__* enc; TYPE_10__* st; int index; int file_index; } ;
struct TYPE_12__ {int codec_type; int codec_id; } ;
struct TYPE_11__ {TYPE_1__* codecpar; } ;
typedef TYPE_2__ OutputStream ;
typedef int OptionsContext ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR_ENCODER_NOT_FOUND ;
 int AVMEDIA_TYPE_AUDIO ;
 int AVMEDIA_TYPE_SUBTITLE ;
 int AVMEDIA_TYPE_VIDEO ;
 int AV_LOG_FATAL ;
 int MATCH_PER_STREAM_OPT (int ,int ,char*,TYPE_3__*,TYPE_10__*) ;
 int av_guess_codec (TYPE_8__*,int *,int ,int *,int) ;
 int av_log (int *,int ,char*,int ,int ,int ,int ) ;
 TYPE_4__* avcodec_find_encoder (int ) ;
 int avcodec_get_name (int ) ;
 int codec_names ;
 TYPE_4__* find_codec_or_die (char*,int,int) ;
 int str ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int choose_encoder(OptionsContext *o, AVFormatContext *s, OutputStream *ost)
{
    enum AVMediaType type = ost->st->codecpar->codec_type;
    char *codec_name = ((void*)0);

    if (type == AVMEDIA_TYPE_VIDEO || type == AVMEDIA_TYPE_AUDIO || type == AVMEDIA_TYPE_SUBTITLE) {
        MATCH_PER_STREAM_OPT(codec_names, str, codec_name, s, ost->st);
        if (!codec_name) {
            ost->st->codecpar->codec_id = av_guess_codec(s->oformat, ((void*)0), s->url,
                                                         ((void*)0), ost->st->codecpar->codec_type);
            ost->enc = avcodec_find_encoder(ost->st->codecpar->codec_id);
            if (!ost->enc) {
                av_log(((void*)0), AV_LOG_FATAL, "Automatic encoder selection failed for "
                       "output stream #%d:%d. Default encoder for format %s (codec %s) is "
                       "probably disabled. Please choose an encoder manually.\n",
                       ost->file_index, ost->index, s->oformat->name,
                       avcodec_get_name(ost->st->codecpar->codec_id));
                return AVERROR_ENCODER_NOT_FOUND;
            }
        } else if (!strcmp(codec_name, "copy"))
            ost->stream_copy = 1;
        else {
            ost->enc = find_codec_or_die(codec_name, ost->st->codecpar->codec_type, 1);
            ost->st->codecpar->codec_id = ost->enc->id;
        }
        ost->encoding_needed = !ost->stream_copy;
    } else {

        ost->stream_copy = 1;
        ost->encoding_needed = 0;
    }

    return 0;
}
