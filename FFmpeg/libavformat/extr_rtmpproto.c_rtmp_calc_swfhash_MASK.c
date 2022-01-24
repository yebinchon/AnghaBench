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
typedef  float uint8_t ;
typedef  int int64_t ;
struct TYPE_11__ {int /*<<< orphan*/  protocol_blacklist; int /*<<< orphan*/  protocol_whitelist; int /*<<< orphan*/  interrupt_callback; TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_12__ {int swfsize; int /*<<< orphan*/  swfverify; } ;
typedef  TYPE_2__ RTMPContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVIO_FLAG_READ ; 
 int /*<<< orphan*/  AVSEEK_SIZE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (float**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*,...) ; 
 float* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (float*,int,int /*<<< orphan*/ ,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*,float*,int) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (float*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (float*,float*,int) ; 
 int FUNC12 (float*,int,float**,int*) ; 

__attribute__((used)) static int FUNC13(URLContext *s)
{
    RTMPContext *rt = s->priv_data;
    uint8_t *in_data = NULL, *out_data = NULL, *swfdata;
    int64_t in_size;
    URLContext *stream;
    char swfhash[32];
    int swfsize;
    int ret = 0;

    /* Get the SWF player file. */
    if ((ret = FUNC7(&stream, rt->swfverify, AVIO_FLAG_READ,
                                    &s->interrupt_callback, NULL,
                                    s->protocol_whitelist, s->protocol_blacklist, s)) < 0) {
        FUNC2(s, AV_LOG_ERROR, "Cannot open connection %s.\n", rt->swfverify);
        goto fail;
    }

    if ((in_size = FUNC9(stream, 0, AVSEEK_SIZE)) < 0) {
        ret = FUNC0(EIO);
        goto fail;
    }

    if (!(in_data = FUNC3(in_size))) {
        ret = FUNC0(ENOMEM);
        goto fail;
    }

    if ((ret = FUNC8(stream, in_data, in_size)) < 0)
        goto fail;

    if (in_size < 3) {
        ret = AVERROR_INVALIDDATA;
        goto fail;
    }

    if (!FUNC10(in_data, "CWS", 3)) {
#if CONFIG_ZLIB
        int64_t out_size;
        /* Decompress the SWF player file using Zlib. */
        if (!(out_data = av_malloc(8))) {
            ret = AVERROR(ENOMEM);
            goto fail;
        }
        *in_data = 'F'; // magic stuff
        memcpy(out_data, in_data, 8);
        out_size = 8;

        if ((ret = rtmp_uncompress_swfplayer(in_data + 8, in_size - 8,
                                             &out_data, &out_size)) < 0)
            goto fail;
        swfsize = out_size;
        swfdata = out_data;
#else
        FUNC2(s, AV_LOG_ERROR,
               "Zlib is required for decompressing the SWF player file.\n");
        ret = FUNC0(EINVAL);
        goto fail;
#endif
    } else {
        swfsize = in_size;
        swfdata = in_data;
    }

    /* Compute the SHA256 hash of the SWF player file. */
    if ((ret = FUNC5(swfdata, swfsize, 0,
                                   "Genuine Adobe Flash Player 001", 30,
                                   swfhash)) < 0)
        goto fail;

    /* Set SWFVerification parameters. */
    FUNC4(rt, "rtmp_swfhash", swfhash, 32, 0);
    rt->swfsize = swfsize;

fail:
    FUNC1(&in_data);
    FUNC1(&out_data);
    FUNC6(stream);
    return ret;
}