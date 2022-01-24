#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_20__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_26__ {int /*<<< orphan*/ * sample_fmts; } ;
struct TYPE_25__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  strict_std_compliance; int /*<<< orphan*/  bit_rate; int /*<<< orphan*/  sample_fmt; int /*<<< orphan*/  channel_layout; int /*<<< orphan*/  channels; } ;
struct TYPE_24__ {int /*<<< orphan*/ * pb; TYPE_20__* oformat; int /*<<< orphan*/  url; } ;
struct TYPE_21__ {int num; int /*<<< orphan*/  den; } ;
struct TYPE_23__ {int /*<<< orphan*/  codecpar; TYPE_1__ time_base; } ;
struct TYPE_22__ {int flags; } ;
typedef  TYPE_2__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;
typedef  TYPE_4__ AVCodecContext ;
typedef  TYPE_5__ AVCodec ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EXIT ; 
 int AVFMT_GLOBALHEADER ; 
 int /*<<< orphan*/  AVIO_FLAG_WRITE ; 
 int /*<<< orphan*/  AV_CODEC_FLAG_GLOBAL_HEADER ; 
 int /*<<< orphan*/  AV_CODEC_ID_AAC ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FF_COMPLIANCE_EXPERIMENTAL ; 
 int /*<<< orphan*/  OUTPUT_BIT_RATE ; 
 int /*<<< orphan*/  OUTPUT_CHANNELS ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_20__* FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 TYPE_4__* FUNC5 (TYPE_5__*) ; 
 TYPE_5__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__**) ; 
 int FUNC8 (TYPE_4__*,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 TYPE_3__* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 TYPE_2__* FUNC12 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **) ; 
 int FUNC14 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC16(const char *filename,
                            AVCodecContext *input_codec_context,
                            AVFormatContext **output_format_context,
                            AVCodecContext **output_codec_context)
{
    AVCodecContext *avctx          = NULL;
    AVIOContext *output_io_context = NULL;
    AVStream *stream               = NULL;
    AVCodec *output_codec          = NULL;
    int error;

    /* Open the output file to write to it. */
    if ((error = FUNC14(&output_io_context, filename,
                           AVIO_FLAG_WRITE)) < 0) {
        FUNC15(stderr, "Could not open output file '%s' (error '%s')\n",
                filename, FUNC1(error));
        return error;
    }

    /* Create a new format context for the output container format. */
    if (!(*output_format_context = FUNC10())) {
        FUNC15(stderr, "Could not allocate output format context\n");
        return FUNC0(ENOMEM);
    }

    /* Associate the output file (pointer) with the container format context. */
    (*output_format_context)->pb = output_io_context;

    /* Guess the desired container format based on the file extension. */
    if (!((*output_format_context)->oformat = FUNC3(NULL, filename,
                                                              NULL))) {
        FUNC15(stderr, "Could not find output file format\n");
        goto cleanup;
    }

    if (!((*output_format_context)->url = FUNC4(filename))) {
        FUNC15(stderr, "Could not allocate url.\n");
        error = FUNC0(ENOMEM);
        goto cleanup;
    }

    /* Find the encoder to be used by its name. */
    if (!(output_codec = FUNC6(AV_CODEC_ID_AAC))) {
        FUNC15(stderr, "Could not find an AAC encoder.\n");
        goto cleanup;
    }

    /* Create a new audio stream in the output file container. */
    if (!(stream = FUNC12(*output_format_context, NULL))) {
        FUNC15(stderr, "Could not create new stream\n");
        error = FUNC0(ENOMEM);
        goto cleanup;
    }

    avctx = FUNC5(output_codec);
    if (!avctx) {
        FUNC15(stderr, "Could not allocate an encoding context\n");
        error = FUNC0(ENOMEM);
        goto cleanup;
    }

    /* Set the basic encoder parameters.
     * The input file's sample rate is used to avoid a sample rate conversion. */
    avctx->channels       = OUTPUT_CHANNELS;
    avctx->channel_layout = FUNC2(OUTPUT_CHANNELS);
    avctx->sample_rate    = input_codec_context->sample_rate;
    avctx->sample_fmt     = output_codec->sample_fmts[0];
    avctx->bit_rate       = OUTPUT_BIT_RATE;

    /* Allow the use of the experimental AAC encoder. */
    avctx->strict_std_compliance = FF_COMPLIANCE_EXPERIMENTAL;

    /* Set the sample rate for the container. */
    stream->time_base.den = input_codec_context->sample_rate;
    stream->time_base.num = 1;

    /* Some container formats (like MP4) require global headers to be present.
     * Mark the encoder so that it behaves accordingly. */
    if ((*output_format_context)->oformat->flags & AVFMT_GLOBALHEADER)
        avctx->flags |= AV_CODEC_FLAG_GLOBAL_HEADER;

    /* Open the encoder for the audio stream to use it later. */
    if ((error = FUNC8(avctx, output_codec, NULL)) < 0) {
        FUNC15(stderr, "Could not open output codec (error '%s')\n",
                FUNC1(error));
        goto cleanup;
    }

    error = FUNC9(stream->codecpar, avctx);
    if (error < 0) {
        FUNC15(stderr, "Could not initialize stream parameters\n");
        goto cleanup;
    }

    /* Save the encoder context for easier access later. */
    *output_codec_context = avctx;

    return 0;

cleanup:
    FUNC7(&avctx);
    FUNC13(&(*output_format_context)->pb);
    FUNC11(*output_format_context);
    *output_format_context = NULL;
    return error < 0 ? error : AVERROR_EXIT;
}