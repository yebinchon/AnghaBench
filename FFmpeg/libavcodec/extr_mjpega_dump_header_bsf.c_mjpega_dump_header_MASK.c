#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_11__ {int size; int* data; } ;
typedef  TYPE_1__ AVPacket ;
typedef  int /*<<< orphan*/  AVBSFContext ;

/* Variables and functions */
#define  APP1 132 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
#define  DHT 131 
#define  DQT 130 
#define  SOF0 129 
 int SOI ; 
#define  SOS 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (TYPE_1__*,int) ; 
 int FUNC4 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int**,int) ; 
 int /*<<< orphan*/  FUNC9 (int**,int) ; 
 int /*<<< orphan*/  FUNC10 (int**,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int**,int) ; 
 int FUNC12 (int /*<<< orphan*/ *,TYPE_1__**) ; 

__attribute__((used)) static int FUNC13(AVBSFContext *ctx, AVPacket *out)
{
    AVPacket *in;
    uint8_t *out_buf;
    unsigned dqt = 0, dht = 0, sof0 = 0;
    int ret = 0, i;

    ret = FUNC12(ctx, &in);
    if (ret < 0)
        return ret;

    ret = FUNC3(out, in->size + 44);
    if (ret < 0)
        goto fail;

    ret = FUNC4(out, in);
    if (ret < 0)
        goto fail;

    out_buf = out->data;
    FUNC11(&out_buf, 0xff);
    FUNC11(&out_buf, SOI);
    FUNC11(&out_buf, 0xff);
    FUNC11(&out_buf, APP1);
    FUNC8(&out_buf, 42); /* size */
    FUNC9(&out_buf, 0);
    FUNC10(&out_buf, "mjpg", 4);
    FUNC9(&out_buf, in->size + 44); /* field size */
    FUNC9(&out_buf, in->size + 44); /* pad field size */
    FUNC9(&out_buf, 0);             /* next ptr */

    for (i = 0; i < in->size - 1; i++) {
        if (in->data[i] == 0xff) {
            switch (in->data[i + 1]) {
            case DQT:  dqt  = i + 46; break;
            case DHT:  dht  = i + 46; break;
            case SOF0: sof0 = i + 46; break;
            case SOS:
                FUNC9(&out_buf, dqt); /* quant off */
                FUNC9(&out_buf, dht); /* huff off */
                FUNC9(&out_buf, sof0); /* image off */
                FUNC9(&out_buf, i + 46); /* scan off */
                FUNC9(&out_buf, i + 46 + FUNC0(*(in->data + i + 2))); /* data off */
                FUNC10(&out_buf, in->data + 2, in->size - 2); /* skip already written SOI */

                out->size = out_buf - out->data;
                FUNC5(&in);
                return 0;
            case APP1:
                if (i + 8 < in->size && FUNC1(in->data + i + 8) == FUNC1("mjpg")) {
                    FUNC2(ctx, AV_LOG_ERROR, "bitstream already formatted\n");
                    FUNC7(out);
                    FUNC6(out, in);
                    FUNC5(&in);
                    return 0;
                }
            }
        }
    }
    FUNC2(ctx, AV_LOG_ERROR, "could not find SOS marker in bitstream\n");
fail:
    FUNC7(out);
    FUNC5(&in);
    return AVERROR_INVALIDDATA;
}