#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint64_t ;
typedef  int int64_t ;
struct TYPE_18__ {int keylen; scalar_t__ key; int /*<<< orphan*/ * pb; TYPE_1__* priv_data; } ;
struct TYPE_17__ {int* data; int stream_index; } ;
struct TYPE_16__ {int length; int* key; int /*<<< orphan*/  offset; } ;
struct TYPE_15__ {scalar_t__ aesc; } ;
typedef  TYPE_1__ MXFContext ;
typedef  TYPE_2__ KLVPacket ;
typedef  TYPE_3__ AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int*,int*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int*,int const*,int) ; 
 int /*<<< orphan*/  mxf_essence_element_key ; 
 int FUNC15 (TYPE_4__*,TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC16(AVFormatContext *s, AVPacket *pkt, KLVPacket *klv)
{
    static const uint8_t checkv[16] = {0x43, 0x48, 0x55, 0x4b, 0x43, 0x48, 0x55, 0x4b, 0x43, 0x48, 0x55, 0x4b, 0x43, 0x48, 0x55, 0x4b};
    MXFContext *mxf = s->priv_data;
    AVIOContext *pb = s->pb;
    int64_t end = FUNC11(pb) + klv->length;
    int64_t size;
    uint64_t orig_size;
    uint64_t plaintext_size;
    uint8_t ivec[16];
    uint8_t tmpbuf[16];
    int index;
    int body_sid;

    if (!mxf->aesc && s->key && s->keylen == 16) {
        mxf->aesc = FUNC2();
        if (!mxf->aesc)
            return FUNC0(ENOMEM);
        FUNC4(mxf->aesc, s->key, 128, 1);
    }
    // crypto context
    size = FUNC13(pb);
    if (size < 0)
        return size;
    FUNC10(pb, size);
    // plaintext offset
    FUNC13(pb);
    plaintext_size = FUNC8(pb);
    // source klv key
    FUNC13(pb);
    FUNC9(pb, klv->key, 16);
    if (!FUNC1(klv, mxf_essence_element_key))
        return AVERROR_INVALIDDATA;

    body_sid = FUNC12(mxf, klv->offset);
    index = FUNC15(s, klv, body_sid);
    if (index < 0)
        return AVERROR_INVALIDDATA;
    // source size
    FUNC13(pb);
    orig_size = FUNC8(pb);
    if (orig_size < plaintext_size)
        return AVERROR_INVALIDDATA;
    // enc. code
    size = FUNC13(pb);
    if (size < 32 || size - 32 < orig_size)
        return AVERROR_INVALIDDATA;
    FUNC9(pb, ivec, 16);
    FUNC9(pb, tmpbuf, 16);
    if (mxf->aesc)
        FUNC3(mxf->aesc, tmpbuf, tmpbuf, 1, ivec, 1);
    if (FUNC14(tmpbuf, checkv, 16))
        FUNC6(s, AV_LOG_ERROR, "probably incorrect decryption key\n");
    size -= 32;
    size = FUNC5(pb, pkt, size);
    if (size < 0)
        return size;
    else if (size < plaintext_size)
        return AVERROR_INVALIDDATA;
    size -= plaintext_size;
    if (mxf->aesc)
        FUNC3(mxf->aesc, &pkt->data[plaintext_size],
                     &pkt->data[plaintext_size], size >> 4, ivec, 1);
    FUNC7(pkt, orig_size);
    pkt->stream_index = index;
    FUNC10(pb, end - FUNC11(pb));
    return 0;
}