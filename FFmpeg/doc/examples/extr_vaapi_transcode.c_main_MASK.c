#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  pb; } ;
struct TYPE_11__ {scalar_t__ stream_index; scalar_t__ size; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ AVPacket ;
typedef  int /*<<< orphan*/  AVCodec ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVIO_FLAG_WRITE ; 
 int /*<<< orphan*/  AV_HWDEVICE_TYPE_VAAPI ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__**) ; 
 int FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  decoder_ctx ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  encoder_ctx ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  hw_device_ctx ; 
 TYPE_2__* ifmt_ctx ; 
 TYPE_2__* ofmt_ctx ; 
 int FUNC16 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ video_stream ; 

int FUNC17(int argc, char **argv)
{
    int ret = 0;
    AVPacket dec_pkt;
    AVCodec *enc_codec;

    if (argc != 4) {
        FUNC15(stderr, "Usage: %s <input file> <encode codec> <output file>\n"
                "The output format is guessed according to the file extension.\n"
                "\n", argv[0]);
        return -1;
    }

    ret = FUNC3(&hw_device_ctx, AV_HWDEVICE_TYPE_VAAPI, NULL, NULL, 0);
    if (ret < 0) {
        FUNC15(stderr, "Failed to create a VAAPI device. Error code: %s\n", FUNC2(ret));
        return -1;
    }

    if ((ret = FUNC16(argv[1])) < 0)
        goto end;

    if (!(enc_codec = FUNC8(argv[2]))) {
        FUNC15(stderr, "Could not find encoder '%s'\n", argv[2]);
        ret = -1;
        goto end;
    }

    if ((ret = (FUNC10(&ofmt_ctx, NULL, NULL, argv[3]))) < 0) {
        FUNC15(stderr, "Failed to deduce output format from file extension. Error code: "
                "%s\n", FUNC2(ret));
        goto end;
    }

    if (!(encoder_ctx = FUNC7(enc_codec))) {
        ret = FUNC0(ENOMEM);
        goto end;
    }

    ret = FUNC12(&ofmt_ctx->pb, argv[3], AVIO_FLAG_WRITE);
    if (ret < 0) {
        FUNC15(stderr, "Cannot open output file. "
                "Error code: %s\n", FUNC2(ret));
        goto end;
    }

    /* read all packets and only transcoding video */
    while (ret >= 0) {
        if ((ret = FUNC5(ifmt_ctx, &dec_pkt)) < 0)
            break;

        if (video_stream == dec_pkt.stream_index)
            ret = FUNC13(&dec_pkt, enc_codec);

        FUNC4(&dec_pkt);
    }

    /* flush decoder */
    dec_pkt.data = NULL;
    dec_pkt.size = 0;
    ret = FUNC13(&dec_pkt, enc_codec);
    FUNC4(&dec_pkt);

    /* flush encoder */
    ret = FUNC14(NULL);

    /* write the trailer for output stream */
    FUNC6(ofmt_ctx);

end:
    FUNC11(&ifmt_ctx);
    FUNC11(&ofmt_ctx);
    FUNC9(&decoder_ctx);
    FUNC9(&encoder_ctx);
    FUNC1(&hw_device_ctx);
    return ret;
}