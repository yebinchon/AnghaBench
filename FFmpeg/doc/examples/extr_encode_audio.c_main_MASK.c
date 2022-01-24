#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_13__ {int bit_rate; int sample_rate; int channels; int frame_size; int /*<<< orphan*/  channel_layout; int /*<<< orphan*/  sample_fmt; } ;
struct TYPE_12__ {int nb_samples; scalar_t__* data; int /*<<< orphan*/  channel_layout; int /*<<< orphan*/  format; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  AVPacket ;
typedef  TYPE_1__ AVFrame ;
typedef  TYPE_2__ AVCodecContext ;
typedef  int /*<<< orphan*/  AVCodec ;

/* Variables and functions */
 int /*<<< orphan*/  AV_CODEC_ID_MP2 ; 
 int /*<<< orphan*/  AV_SAMPLE_FMT_S16 ; 
 int M_PI ; 
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__**) ; 
 scalar_t__ FUNC11 (TYPE_2__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/  const*) ; 
 int FUNC19 (int /*<<< orphan*/  const*) ; 
 int FUNC20 (float) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC21(int argc, char **argv)
{
    const char *filename;
    const AVCodec *codec;
    AVCodecContext *c= NULL;
    AVFrame *frame;
    AVPacket *pkt;
    int i, j, k, ret;
    FILE *f;
    uint16_t *samples;
    float t, tincr;

    if (argc <= 1) {
        FUNC17(stderr, "Usage: %s <output file>\n", argv[0]);
        return 0;
    }
    filename = argv[1];

    /* find the MP2 encoder */
    codec = FUNC9(AV_CODEC_ID_MP2);
    if (!codec) {
        FUNC17(stderr, "Codec not found\n");
        FUNC14(1);
    }

    c = FUNC8(codec);
    if (!c) {
        FUNC17(stderr, "Could not allocate audio codec context\n");
        FUNC14(1);
    }

    /* put sample parameters */
    c->bit_rate = 64000;

    /* check that the encoder supports s16 pcm input */
    c->sample_fmt = AV_SAMPLE_FMT_S16;
    if (!FUNC12(codec, c->sample_fmt)) {
        FUNC17(stderr, "Encoder does not support sample format %s",
                FUNC5(c->sample_fmt));
        FUNC14(1);
    }

    /* select other audio parameters supported by the encoder */
    c->sample_rate    = FUNC19(codec);
    c->channel_layout = FUNC18(codec);
    c->channels       = FUNC4(c->channel_layout);

    /* open it */
    if (FUNC11(c, codec, NULL) < 0) {
        FUNC17(stderr, "Could not open codec\n");
        FUNC14(1);
    }

    f = FUNC16(filename, "wb");
    if (!f) {
        FUNC17(stderr, "Could not open %s\n", filename);
        FUNC14(1);
    }

    /* packet for holding encoded output */
    pkt = FUNC6();
    if (!pkt) {
        FUNC17(stderr, "could not allocate the packet\n");
        FUNC14(1);
    }

    /* frame containing input raw audio */
    frame = FUNC0();
    if (!frame) {
        FUNC17(stderr, "Could not allocate audio frame\n");
        FUNC14(1);
    }

    frame->nb_samples     = c->frame_size;
    frame->format         = c->sample_fmt;
    frame->channel_layout = c->channel_layout;

    /* allocate the data buffers */
    ret = FUNC2(frame, 0);
    if (ret < 0) {
        FUNC17(stderr, "Could not allocate audio data buffers\n");
        FUNC14(1);
    }

    /* encode a single tone sound */
    t = 0;
    tincr = 2 * M_PI * 440.0 / c->sample_rate;
    for (i = 0; i < 200; i++) {
        /* make sure the frame is writable -- makes a copy if the encoder
         * kept a reference internally */
        ret = FUNC3(frame);
        if (ret < 0)
            FUNC14(1);
        samples = (uint16_t*)frame->data[0];

        for (j = 0; j < c->frame_size; j++) {
            samples[2*j] = (int)(FUNC20(t) * 10000);

            for (k = 1; k < c->channels; k++)
                samples[2*j + k] = samples[2*j];
            t += tincr;
        }
        FUNC13(c, frame, pkt, f);
    }

    /* flush the encoder */
    FUNC13(c, NULL, pkt, f);

    FUNC15(f);

    FUNC1(&frame);
    FUNC7(&pkt);
    FUNC10(&c);

    return 0;
}