
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef enum AVMediaType { ____Placeholder_AVMediaType } AVMediaType ;
struct TYPE_7__ {TYPE_1__** streams; } ;
struct TYPE_6__ {int codecpar; } ;
typedef TYPE_1__ AVStream ;
typedef TYPE_2__ AVFormatContext ;
typedef int AVDictionary ;
typedef int AVCodecContext ;
typedef int AVCodec ;


 int AVERROR (int ) ;
 int EINVAL ;
 int av_dict_set (int **,char*,char*,int ) ;
 int av_find_best_stream (TYPE_2__*,int,int,int,int **,int ) ;
 char* av_get_media_type_string (int) ;
 int * avcodec_alloc_context3 (int *) ;
 int avcodec_open2 (int *,int *,int **) ;
 int avcodec_parameters_to_context (int *,int ) ;
 int fprintf (int ,char*,...) ;
 char* src_filename ;
 int stderr ;
 int * video_dec_ctx ;
 TYPE_1__* video_stream ;
 size_t video_stream_idx ;

__attribute__((used)) static int open_codec_context(AVFormatContext *fmt_ctx, enum AVMediaType type)
{
    int ret;
    AVStream *st;
    AVCodecContext *dec_ctx = ((void*)0);
    AVCodec *dec = ((void*)0);
    AVDictionary *opts = ((void*)0);

    ret = av_find_best_stream(fmt_ctx, type, -1, -1, &dec, 0);
    if (ret < 0) {
        fprintf(stderr, "Could not find %s stream in input file '%s'\n",
                av_get_media_type_string(type), src_filename);
        return ret;
    } else {
        int stream_idx = ret;
        st = fmt_ctx->streams[stream_idx];

        dec_ctx = avcodec_alloc_context3(dec);
        if (!dec_ctx) {
            fprintf(stderr, "Failed to allocate codec\n");
            return AVERROR(EINVAL);
        }

        ret = avcodec_parameters_to_context(dec_ctx, st->codecpar);
        if (ret < 0) {
            fprintf(stderr, "Failed to copy codec parameters to codec context\n");
            return ret;
        }


        av_dict_set(&opts, "flags2", "+export_mvs", 0);
        if ((ret = avcodec_open2(dec_ctx, dec, &opts)) < 0) {
            fprintf(stderr, "Failed to open %s codec\n",
                    av_get_media_type_string(type));
            return ret;
        }

        video_stream_idx = stream_idx;
        video_stream = fmt_ctx->streams[video_stream_idx];
        video_dec_ctx = dec_ctx;
    }

    return 0;
}
