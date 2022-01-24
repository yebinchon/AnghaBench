#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
struct TYPE_18__ {int /*<<< orphan*/  id; } ;
struct TYPE_17__ {int sample_fmt; int channels; int sample_rate; } ;
struct TYPE_16__ {scalar_t__ size; int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ AVPacket ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  int /*<<< orphan*/  AVCodecParserContext ;
typedef  TYPE_2__ AVCodecContext ;
typedef  TYPE_3__ AVCodec ;

/* Variables and functions */
 int AUDIO_INBUF_SIZE ; 
 size_t AUDIO_REFILL_THRESH ; 
 int /*<<< orphan*/  AV_CODEC_ID_MP2 ; 
 int AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  AV_NOPTS_VALUE ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (int) ; 
 char* FUNC4 (int) ; 
 TYPE_1__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ **,scalar_t__*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 
 TYPE_2__* FUNC11 (TYPE_3__ const*) ; 
 TYPE_3__* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__**) ; 
 scalar_t__ FUNC14 (TYPE_2__*,TYPE_3__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,...) ; 
 void* FUNC20 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int FUNC21 (char const**,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC23 (char*,char const*,...) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC24(int argc, char **argv)
{
    const char *outfilename, *filename;
    const AVCodec *codec;
    AVCodecContext *c= NULL;
    AVCodecParserContext *parser = NULL;
    int len, ret;
    FILE *f, *outfile;
    uint8_t inbuf[AUDIO_INBUF_SIZE + AV_INPUT_BUFFER_PADDING_SIZE];
    uint8_t *data;
    size_t   data_size;
    AVPacket *pkt;
    AVFrame *decoded_frame = NULL;
    enum AVSampleFormat sfmt;
    int n_channels = 0;
    const char *fmt;

    if (argc <= 2) {
        FUNC19(stderr, "Usage: %s <input file> <output file>\n", argv[0]);
        FUNC16(0);
    }
    filename    = argv[1];
    outfilename = argv[2];

    pkt = FUNC5();

    /* find the MPEG audio decoder */
    codec = FUNC12(AV_CODEC_ID_MP2);
    if (!codec) {
        FUNC19(stderr, "Codec not found\n");
        FUNC16(1);
    }

    parser = FUNC8(codec->id);
    if (!parser) {
        FUNC19(stderr, "Parser not found\n");
        FUNC16(1);
    }

    c = FUNC11(codec);
    if (!c) {
        FUNC19(stderr, "Could not allocate audio codec context\n");
        FUNC16(1);
    }

    /* open it */
    if (FUNC14(c, codec, NULL) < 0) {
        FUNC19(stderr, "Could not open codec\n");
        FUNC16(1);
    }

    f = FUNC18(filename, "rb");
    if (!f) {
        FUNC19(stderr, "Could not open %s\n", filename);
        FUNC16(1);
    }
    outfile = FUNC18(outfilename, "wb");
    if (!outfile) {
        FUNC2(c);
        FUNC16(1);
    }

    /* decode until eof */
    data      = inbuf;
    data_size = FUNC20(inbuf, 1, AUDIO_INBUF_SIZE, f);

    while (data_size > 0) {
        if (!decoded_frame) {
            if (!(decoded_frame = FUNC0())) {
                FUNC19(stderr, "Could not allocate audio frame\n");
                FUNC16(1);
            }
        }

        ret = FUNC9(parser, c, &pkt->data, &pkt->size,
                               data, data_size,
                               AV_NOPTS_VALUE, AV_NOPTS_VALUE, 0);
        if (ret < 0) {
            FUNC19(stderr, "Error while parsing\n");
            FUNC16(1);
        }
        data      += ret;
        data_size -= ret;

        if (pkt->size)
            FUNC15(c, pkt, decoded_frame, outfile);

        if (data_size < AUDIO_REFILL_THRESH) {
            FUNC22(inbuf, data, data_size);
            data = inbuf;
            len = FUNC20(data + data_size, 1,
                        AUDIO_INBUF_SIZE - data_size, f);
            if (len > 0)
                data_size += len;
        }
    }

    /* flush the decoder */
    pkt->data = NULL;
    pkt->size = 0;
    FUNC15(c, pkt, decoded_frame, outfile);

    /* print output pcm infomations, because there have no metadata of pcm */
    sfmt = c->sample_fmt;

    if (FUNC10(sfmt)) {
        const char *packed = FUNC4(sfmt);
        FUNC23("Warning: the sample format the decoder produced is planar "
               "(%s). This example will output the first channel only.\n",
               packed ? packed : "?");
        sfmt = FUNC3(sfmt);
    }

    n_channels = c->channels;
    if ((ret = FUNC21(&fmt, sfmt)) < 0)
        goto end;

    FUNC23("Play the output audio file with the command:\n"
           "ffplay -f %s -ac %d -ar %d %s\n",
           fmt, n_channels, c->sample_rate,
           outfilename);
end:
    FUNC17(outfile);
    FUNC17(f);

    FUNC13(&c);
    FUNC7(parser);
    FUNC1(&decoded_frame);
    FUNC6(&pkt);

    return 0;
}