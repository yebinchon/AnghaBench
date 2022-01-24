#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_10__ {int /*<<< orphan*/  id; } ;
struct TYPE_9__ {scalar_t__ size; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ AVPacket ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  int /*<<< orphan*/  AVCodecParserContext ;
typedef  int /*<<< orphan*/  AVCodecContext ;
typedef  TYPE_2__ AVCodec ;

/* Variables and functions */
 int /*<<< orphan*/  AV_CODEC_ID_MPEG1VIDEO ; 
 int AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  AV_NOPTS_VALUE ; 
 int INBUF_SIZE ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_2__ const*) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,...) ; 
 size_t FUNC17 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC19(int argc, char **argv)
{
    const char *filename, *outfilename;
    const AVCodec *codec;
    AVCodecParserContext *parser;
    AVCodecContext *c= NULL;
    FILE *f;
    AVFrame *frame;
    uint8_t inbuf[INBUF_SIZE + AV_INPUT_BUFFER_PADDING_SIZE];
    uint8_t *data;
    size_t   data_size;
    int ret;
    AVPacket *pkt;

    if (argc <= 2) {
        FUNC16(stderr, "Usage: %s <input file> <output file>\n"
                "And check your input file is encoded by mpeg1video please.\n", argv[0]);
        FUNC12(0);
    }
    filename    = argv[1];
    outfilename = argv[2];

    pkt = FUNC2();
    if (!pkt)
        FUNC12(1);

    /* set end of buffer to 0 (this ensures that no overreading happens for damaged MPEG streams) */
    FUNC18(inbuf + INBUF_SIZE, 0, AV_INPUT_BUFFER_PADDING_SIZE);

    /* find the MPEG-1 video decoder */
    codec = FUNC8(AV_CODEC_ID_MPEG1VIDEO);
    if (!codec) {
        FUNC16(stderr, "Codec not found\n");
        FUNC12(1);
    }

    parser = FUNC5(codec->id);
    if (!parser) {
        FUNC16(stderr, "parser not found\n");
        FUNC12(1);
    }

    c = FUNC7(codec);
    if (!c) {
        FUNC16(stderr, "Could not allocate video codec context\n");
        FUNC12(1);
    }

    /* For some codecs, such as msmpeg4 and mpeg4, width and height
       MUST be initialized there because this information is not
       available in the bitstream. */

    /* open it */
    if (FUNC10(c, codec, NULL) < 0) {
        FUNC16(stderr, "Could not open codec\n");
        FUNC12(1);
    }

    f = FUNC15(filename, "rb");
    if (!f) {
        FUNC16(stderr, "Could not open %s\n", filename);
        FUNC12(1);
    }

    frame = FUNC0();
    if (!frame) {
        FUNC16(stderr, "Could not allocate video frame\n");
        FUNC12(1);
    }

    while (!FUNC14(f)) {
        /* read raw data from the input file */
        data_size = FUNC17(inbuf, 1, INBUF_SIZE, f);
        if (!data_size)
            break;

        /* use the parser to split the data into frames */
        data = inbuf;
        while (data_size > 0) {
            ret = FUNC6(parser, c, &pkt->data, &pkt->size,
                                   data, data_size, AV_NOPTS_VALUE, AV_NOPTS_VALUE, 0);
            if (ret < 0) {
                FUNC16(stderr, "Error while parsing\n");
                FUNC12(1);
            }
            data      += ret;
            data_size -= ret;

            if (pkt->size)
                FUNC11(c, frame, pkt, outfilename);
        }
    }

    /* flush the decoder */
    FUNC11(c, frame, NULL, outfilename);

    FUNC13(f);

    FUNC4(parser);
    FUNC9(&c);
    FUNC1(&frame);
    FUNC3(&pkt);

    return 0;
}