
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_8__ ;
typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_19__ ;
typedef struct TYPE_21__ TYPE_16__ ;
typedef struct TYPE_20__ TYPE_13__ ;


typedef int int64_t ;
typedef int buf ;
struct TYPE_30__ {int coded_height; int coded_width; int qmax; int qmin; int codec; int properties; } ;
struct TYPE_29__ {int value; } ;
struct TYPE_28__ {char* dump_separator; TYPE_4__** streams; TYPE_2__* iformat; TYPE_1__* oformat; } ;
struct TYPE_27__ {int den; int num; } ;
struct TYPE_21__ {scalar_t__ num; scalar_t__ den; } ;
struct TYPE_22__ {scalar_t__ den; scalar_t__ num; } ;
struct TYPE_26__ {int disposition; int metadata; TYPE_3__* codec; TYPE_16__ time_base; TYPE_16__ r_frame_rate; TYPE_16__ avg_frame_rate; TYPE_13__* codecpar; TYPE_19__ sample_aspect_ratio; int codec_info_nb_frames; int id; } ;
struct TYPE_25__ {TYPE_16__ time_base; int coded_height; int coded_width; int qmax; int qmin; int codec; int properties; } ;
struct TYPE_24__ {int flags; } ;
struct TYPE_23__ {int flags; } ;
struct TYPE_20__ {int width; int height; scalar_t__ codec_type; int sample_aspect_ratio; } ;
typedef TYPE_4__ AVStream ;
typedef TYPE_5__ AVRational ;
typedef TYPE_6__ AVFormatContext ;
typedef TYPE_7__ AVDictionaryEntry ;
typedef TYPE_8__ AVCodecContext ;


 int AVFMT_SHOW_IDS ;
 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 int AV_DISPOSITION_ATTACHED_PIC ;
 int AV_DISPOSITION_CAPTIONS ;
 int AV_DISPOSITION_CLEAN_EFFECTS ;
 int AV_DISPOSITION_COMMENT ;
 int AV_DISPOSITION_DEFAULT ;
 int AV_DISPOSITION_DEPENDENT ;
 int AV_DISPOSITION_DESCRIPTIONS ;
 int AV_DISPOSITION_DUB ;
 int AV_DISPOSITION_FORCED ;
 int AV_DISPOSITION_HEARING_IMPAIRED ;
 int AV_DISPOSITION_KARAOKE ;
 int AV_DISPOSITION_LYRICS ;
 int AV_DISPOSITION_METADATA ;
 int AV_DISPOSITION_ORIGINAL ;
 int AV_DISPOSITION_STILL_IMAGE ;
 int AV_DISPOSITION_TIMED_THUMBNAILS ;
 int AV_DISPOSITION_VISUAL_IMPAIRED ;
 int AV_LOG_DEBUG ;
 int AV_LOG_INFO ;
 scalar_t__ av_cmp_q (TYPE_19__,int ) ;
 TYPE_7__* av_dict_get (int ,char*,int *,int ) ;
 int av_log (int *,int ,char*,...) ;
 int av_opt_set (TYPE_8__*,char*,char*,int ) ;
 int av_q2d (TYPE_16__) ;
 int av_reduce (int *,int *,int,int,int) ;
 TYPE_8__* avcodec_alloc_context3 (int *) ;
 int avcodec_free_context (TYPE_8__**) ;
 int avcodec_parameters_to_context (TYPE_8__*,TYPE_13__*) ;
 int avcodec_string (char*,int,TYPE_8__*,int) ;
 int dump_metadata (int *,int ,char*) ;
 int dump_sidedata (int *,TYPE_4__*,char*) ;
 int print_fps (int,char*) ;

__attribute__((used)) static void dump_stream_format(AVFormatContext *ic, int i,
                               int index, int is_output)
{
    char buf[256];
    int flags = (is_output ? ic->oformat->flags : ic->iformat->flags);
    AVStream *st = ic->streams[i];
    AVDictionaryEntry *lang = av_dict_get(st->metadata, "language", ((void*)0), 0);
    char *separator = ic->dump_separator;
    AVCodecContext *avctx;
    int ret;

    avctx = avcodec_alloc_context3(((void*)0));
    if (!avctx)
        return;

    ret = avcodec_parameters_to_context(avctx, st->codecpar);
    if (ret < 0) {
        avcodec_free_context(&avctx);
        return;
    }


    avctx->properties = st->codec->properties;
    avctx->codec = st->codec->codec;
    avctx->qmin = st->codec->qmin;
    avctx->qmax = st->codec->qmax;
    avctx->coded_width = st->codec->coded_width;
    avctx->coded_height = st->codec->coded_height;

    if (separator)
        av_opt_set(avctx, "dump_separator", separator, 0);
    avcodec_string(buf, sizeof(buf), avctx, is_output);
    avcodec_free_context(&avctx);

    av_log(((void*)0), AV_LOG_INFO, "    Stream #%d:%d", index, i);



    if (flags & AVFMT_SHOW_IDS)
        av_log(((void*)0), AV_LOG_INFO, "[0x%x]", st->id);
    if (lang)
        av_log(((void*)0), AV_LOG_INFO, "(%s)", lang->value);
    av_log(((void*)0), AV_LOG_DEBUG, ", %d, %d/%d", st->codec_info_nb_frames,
           st->time_base.num, st->time_base.den);
    av_log(((void*)0), AV_LOG_INFO, ": %s", buf);

    if (st->sample_aspect_ratio.num &&
        av_cmp_q(st->sample_aspect_ratio, st->codecpar->sample_aspect_ratio)) {
        AVRational display_aspect_ratio;
        av_reduce(&display_aspect_ratio.num, &display_aspect_ratio.den,
                  st->codecpar->width * (int64_t)st->sample_aspect_ratio.num,
                  st->codecpar->height * (int64_t)st->sample_aspect_ratio.den,
                  1024 * 1024);
        av_log(((void*)0), AV_LOG_INFO, ", SAR %d:%d DAR %d:%d",
               st->sample_aspect_ratio.num, st->sample_aspect_ratio.den,
               display_aspect_ratio.num, display_aspect_ratio.den);
    }

    if (st->codecpar->codec_type == AVMEDIA_TYPE_VIDEO) {
        int fps = st->avg_frame_rate.den && st->avg_frame_rate.num;
        int tbr = st->r_frame_rate.den && st->r_frame_rate.num;
        int tbn = st->time_base.den && st->time_base.num;
        int tbc = st->codec->time_base.den && st->codec->time_base.num;

        if (fps || tbr || tbn || tbc)
            av_log(((void*)0), AV_LOG_INFO, "%s", separator);

        if (fps)
            print_fps(av_q2d(st->avg_frame_rate), tbr || tbn || tbc ? "fps, " : "fps");
        if (tbr)
            print_fps(av_q2d(st->r_frame_rate), tbn || tbc ? "tbr, " : "tbr");
        if (tbn)
            print_fps(1 / av_q2d(st->time_base), tbc ? "tbn, " : "tbn");
        if (tbc)
            print_fps(1 / av_q2d(st->codec->time_base), "tbc");
    }

    if (st->disposition & AV_DISPOSITION_DEFAULT)
        av_log(((void*)0), AV_LOG_INFO, " (default)");
    if (st->disposition & AV_DISPOSITION_DUB)
        av_log(((void*)0), AV_LOG_INFO, " (dub)");
    if (st->disposition & AV_DISPOSITION_ORIGINAL)
        av_log(((void*)0), AV_LOG_INFO, " (original)");
    if (st->disposition & AV_DISPOSITION_COMMENT)
        av_log(((void*)0), AV_LOG_INFO, " (comment)");
    if (st->disposition & AV_DISPOSITION_LYRICS)
        av_log(((void*)0), AV_LOG_INFO, " (lyrics)");
    if (st->disposition & AV_DISPOSITION_KARAOKE)
        av_log(((void*)0), AV_LOG_INFO, " (karaoke)");
    if (st->disposition & AV_DISPOSITION_FORCED)
        av_log(((void*)0), AV_LOG_INFO, " (forced)");
    if (st->disposition & AV_DISPOSITION_HEARING_IMPAIRED)
        av_log(((void*)0), AV_LOG_INFO, " (hearing impaired)");
    if (st->disposition & AV_DISPOSITION_VISUAL_IMPAIRED)
        av_log(((void*)0), AV_LOG_INFO, " (visual impaired)");
    if (st->disposition & AV_DISPOSITION_CLEAN_EFFECTS)
        av_log(((void*)0), AV_LOG_INFO, " (clean effects)");
    if (st->disposition & AV_DISPOSITION_ATTACHED_PIC)
        av_log(((void*)0), AV_LOG_INFO, " (attached pic)");
    if (st->disposition & AV_DISPOSITION_TIMED_THUMBNAILS)
        av_log(((void*)0), AV_LOG_INFO, " (timed thumbnails)");
    if (st->disposition & AV_DISPOSITION_CAPTIONS)
        av_log(((void*)0), AV_LOG_INFO, " (captions)");
    if (st->disposition & AV_DISPOSITION_DESCRIPTIONS)
        av_log(((void*)0), AV_LOG_INFO, " (descriptions)");
    if (st->disposition & AV_DISPOSITION_METADATA)
        av_log(((void*)0), AV_LOG_INFO, " (metadata)");
    if (st->disposition & AV_DISPOSITION_DEPENDENT)
        av_log(((void*)0), AV_LOG_INFO, " (dependent)");
    if (st->disposition & AV_DISPOSITION_STILL_IMAGE)
        av_log(((void*)0), AV_LOG_INFO, " (still image)");
    av_log(((void*)0), AV_LOG_INFO, "\n");

    dump_metadata(((void*)0), st->metadata, "    ");

    dump_sidedata(((void*)0), st, "    ");
}
