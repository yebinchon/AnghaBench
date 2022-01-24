#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_25__ {int /*<<< orphan*/  pb; TYPE_3__* oformat; } ;
struct TYPE_24__ {scalar_t__ video_codec; scalar_t__ audio_codec; int flags; } ;
struct TYPE_23__ {TYPE_1__* enc; int /*<<< orphan*/  next_pts; int /*<<< orphan*/  member_0; } ;
struct TYPE_22__ {int /*<<< orphan*/  time_base; } ;
typedef  TYPE_2__ OutputStream ;
typedef  TYPE_3__ AVOutputFormat ;
typedef  TYPE_4__ AVFormatContext ;
typedef  int /*<<< orphan*/  AVDictionary ;
typedef  int /*<<< orphan*/  AVCodec ;

/* Variables and functions */
 int AVFMT_NOFILE ; 
 int /*<<< orphan*/  AVIO_FLAG_WRITE ; 
 scalar_t__ AV_CODEC_ID_NONE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_4__*,int /*<<< orphan*/ **,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,char const*,int) ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__**,int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int FUNC8 (TYPE_4__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*,TYPE_2__*) ; 

int FUNC19(int argc, char **argv)
{
    OutputStream video_st = { 0 }, audio_st = { 0 };
    const char *filename;
    AVOutputFormat *fmt;
    AVFormatContext *oc;
    AVCodec *audio_codec, *video_codec;
    int ret;
    int have_video = 0, have_audio = 0;
    int encode_video = 0, encode_audio = 0;
    AVDictionary *opt = NULL;
    int i;

    if (argc < 2) {
        FUNC15("usage: %s output_file\n"
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
        if (!FUNC16(argv[i], "-flags") || !FUNC16(argv[i], "-fflags"))
            FUNC2(&opt, argv[i]+1, argv[i+1], 0);
    }

    /* allocate the output media context */
    FUNC6(&oc, NULL, NULL, filename);
    if (!oc) {
        FUNC15("Could not deduce output format from file extension: using MPEG.\n");
        FUNC6(&oc, NULL, "mpeg", filename);
    }
    if (!oc)
        return 1;

    fmt = oc->oformat;

    /* Add the audio and video streams using the default format codecs
     * and initialize the codecs. */
    if (fmt->video_codec != AV_CODEC_ID_NONE) {
        FUNC0(&video_st, oc, &video_codec, fmt->video_codec);
        have_video = 1;
        encode_video = 1;
    }
    if (fmt->audio_codec != AV_CODEC_ID_NONE) {
        FUNC0(&audio_st, oc, &audio_codec, fmt->audio_codec);
        have_audio = 1;
        encode_audio = 1;
    }

    /* Now that all the parameters are set, we can open the audio and
     * video codecs and allocate the necessary encode buffers. */
    if (have_video)
        FUNC14(oc, video_codec, &video_st, opt);

    if (have_audio)
        FUNC13(oc, audio_codec, &audio_st, opt);

    FUNC3(oc, 0, filename, 1);

    /* open the output file, if needed */
    if (!(fmt->flags & AVFMT_NOFILE)) {
        ret = FUNC10(&oc->pb, filename, AVIO_FLAG_WRITE);
        if (ret < 0) {
            FUNC12(stderr, "Could not open '%s': %s\n", filename,
                    FUNC4(ret));
            return 1;
        }
    }

    /* Write the stream header, if any. */
    ret = FUNC8(oc, &opt);
    if (ret < 0) {
        FUNC12(stderr, "Error occurred when opening output file: %s\n",
                FUNC4(ret));
        return 1;
    }

    while (encode_video || encode_audio) {
        /* select the stream to encode */
        if (encode_video &&
            (!encode_audio || FUNC1(video_st.next_pts, video_st.enc->time_base,
                                            audio_st.next_pts, audio_st.enc->time_base) <= 0)) {
            encode_video = !FUNC18(oc, &video_st);
        } else {
            encode_audio = !FUNC17(oc, &audio_st);
        }
    }

    /* Write the trailer, if any. The trailer must be written before you
     * close the CodecContexts open when you wrote the header; otherwise
     * av_write_trailer() may try to use memory that was freed on
     * av_codec_close(). */
    FUNC5(oc);

    /* Close each codec. */
    if (have_video)
        FUNC11(oc, &video_st);
    if (have_audio)
        FUNC11(oc, &audio_st);

    if (!(fmt->flags & AVFMT_NOFILE))
        /* Close the output file. */
        FUNC9(&oc->pb);

    /* free the stream */
    FUNC7(oc);

    return 0;
}