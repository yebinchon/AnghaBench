
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


struct TYPE_25__ {int pb; TYPE_3__* oformat; } ;
struct TYPE_24__ {scalar_t__ video_codec; scalar_t__ audio_codec; int flags; } ;
struct TYPE_23__ {TYPE_1__* enc; int next_pts; int member_0; } ;
struct TYPE_22__ {int time_base; } ;
typedef TYPE_2__ OutputStream ;
typedef TYPE_3__ AVOutputFormat ;
typedef TYPE_4__ AVFormatContext ;
typedef int AVDictionary ;
typedef int AVCodec ;


 int AVFMT_NOFILE ;
 int AVIO_FLAG_WRITE ;
 scalar_t__ AV_CODEC_ID_NONE ;
 int add_stream (TYPE_2__*,TYPE_4__*,int **,scalar_t__) ;
 scalar_t__ av_compare_ts (int ,int ,int ,int ) ;
 int av_dict_set (int **,char*,char*,int ) ;
 int av_dump_format (TYPE_4__*,int ,char const*,int) ;
 char* av_err2str (int) ;
 int av_write_trailer (TYPE_4__*) ;
 int avformat_alloc_output_context2 (TYPE_4__**,int *,char*,char const*) ;
 int avformat_free_context (TYPE_4__*) ;
 int avformat_write_header (TYPE_4__*,int **) ;
 int avio_closep (int *) ;
 int avio_open (int *,char const*,int ) ;
 int close_stream (TYPE_4__*,TYPE_2__*) ;
 int fprintf (int ,char*,char const*,...) ;
 int open_audio (TYPE_4__*,int *,TYPE_2__*,int *) ;
 int open_video (TYPE_4__*,int *,TYPE_2__*,int *) ;
 int printf (char*,...) ;
 int stderr ;
 int strcmp (char*,char*) ;
 int write_audio_frame (TYPE_4__*,TYPE_2__*) ;
 int write_video_frame (TYPE_4__*,TYPE_2__*) ;

int main(int argc, char **argv)
{
    OutputStream video_st = { 0 }, audio_st = { 0 };
    const char *filename;
    AVOutputFormat *fmt;
    AVFormatContext *oc;
    AVCodec *audio_codec, *video_codec;
    int ret;
    int have_video = 0, have_audio = 0;
    int encode_video = 0, encode_audio = 0;
    AVDictionary *opt = ((void*)0);
    int i;

    if (argc < 2) {
        printf("usage: %s output_file\n"
               "API example program to output a media file with libavformat.\n"
               "This program generates a synthetic audio and video stream, encodes and\n"
               "muxes them into a file named output_file.\n"
               "The output format is automatically guessed according to the file extension.\n"
               "Raw images can also be output by using '%%d' in the filename.\n"
               "\n", argv[0]);
        return 1;
    }

    filename = argv[1];
    for (i = 2; i+1 < argc; i+=2) {
        if (!strcmp(argv[i], "-flags") || !strcmp(argv[i], "-fflags"))
            av_dict_set(&opt, argv[i]+1, argv[i+1], 0);
    }


    avformat_alloc_output_context2(&oc, ((void*)0), ((void*)0), filename);
    if (!oc) {
        printf("Could not deduce output format from file extension: using MPEG.\n");
        avformat_alloc_output_context2(&oc, ((void*)0), "mpeg", filename);
    }
    if (!oc)
        return 1;

    fmt = oc->oformat;



    if (fmt->video_codec != AV_CODEC_ID_NONE) {
        add_stream(&video_st, oc, &video_codec, fmt->video_codec);
        have_video = 1;
        encode_video = 1;
    }
    if (fmt->audio_codec != AV_CODEC_ID_NONE) {
        add_stream(&audio_st, oc, &audio_codec, fmt->audio_codec);
        have_audio = 1;
        encode_audio = 1;
    }



    if (have_video)
        open_video(oc, video_codec, &video_st, opt);

    if (have_audio)
        open_audio(oc, audio_codec, &audio_st, opt);

    av_dump_format(oc, 0, filename, 1);


    if (!(fmt->flags & AVFMT_NOFILE)) {
        ret = avio_open(&oc->pb, filename, AVIO_FLAG_WRITE);
        if (ret < 0) {
            fprintf(stderr, "Could not open '%s': %s\n", filename,
                    av_err2str(ret));
            return 1;
        }
    }


    ret = avformat_write_header(oc, &opt);
    if (ret < 0) {
        fprintf(stderr, "Error occurred when opening output file: %s\n",
                av_err2str(ret));
        return 1;
    }

    while (encode_video || encode_audio) {

        if (encode_video &&
            (!encode_audio || av_compare_ts(video_st.next_pts, video_st.enc->time_base,
                                            audio_st.next_pts, audio_st.enc->time_base) <= 0)) {
            encode_video = !write_video_frame(oc, &video_st);
        } else {
            encode_audio = !write_audio_frame(oc, &audio_st);
        }
    }





    av_write_trailer(oc);


    if (have_video)
        close_stream(oc, &video_st);
    if (have_audio)
        close_stream(oc, &audio_st);

    if (!(fmt->flags & AVFMT_NOFILE))

        avio_closep(&oc->pb);


    avformat_free_context(oc);

    return 0;
}
