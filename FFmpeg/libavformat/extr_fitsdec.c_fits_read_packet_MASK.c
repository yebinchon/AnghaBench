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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_18__ {int len; } ;
struct TYPE_17__ {int /*<<< orphan*/  pb; TYPE_1__* priv_data; } ;
struct TYPE_16__ {int size; int /*<<< orphan*/  pts; scalar_t__ data; int /*<<< orphan*/  flags; scalar_t__ stream_index; } ;
struct TYPE_15__ {int /*<<< orphan*/  pts; scalar_t__ first_image; } ;
typedef  int /*<<< orphan*/  FITSHeader ;
typedef  TYPE_1__ FITSContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFormatContext ;
typedef  TYPE_4__ AVBPrint ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_BPRINT_SIZE_UNLIMITED ; 
 int /*<<< orphan*/  AV_PKT_FLAG_KEY ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FITS_BLOCK_SIZE ; 
 int /*<<< orphan*/  STATE_SIMPLE ; 
 int /*<<< orphan*/  STATE_XTENSION ; 
 scalar_t__ FUNC1 (TYPE_4__*,char**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (char**) ; 
 scalar_t__ FUNC5 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_3__*,TYPE_1__*,int /*<<< orphan*/ *,TYPE_4__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,char*,int) ; 

__attribute__((used)) static int FUNC12(AVFormatContext *s, AVPacket *pkt)
{
    int64_t pos, ret;
    uint64_t size;
    FITSContext *fits = s->priv_data;
    FITSHeader header;
    AVBPrint avbuf;
    char *buf;

    if (fits->first_image) {
        FUNC9(&header, STATE_SIMPLE);
    } else {
        FUNC9(&header, STATE_XTENSION);
    }

    FUNC2(&avbuf, FITS_BLOCK_SIZE, AV_BPRINT_SIZE_UNLIMITED);
    while ((ret = FUNC10(s, fits, &header, &avbuf, &size)) == 0) {
        pos = FUNC8(s->pb, size);
        if (pos < 0)
            return pos;

        FUNC1(&avbuf, NULL);
        FUNC2(&avbuf, FITS_BLOCK_SIZE, AV_BPRINT_SIZE_UNLIMITED);
        FUNC9(&header, STATE_XTENSION);
    }
    if (ret < 0)
        goto fail;

    if (!FUNC3(&avbuf)) {
        ret = FUNC0(ENOMEM);
        goto fail;
    }

    // Header is sent with the first line removed...
    ret = FUNC5(pkt, avbuf.len - 80 + size);
    if (ret < 0)
        goto fail;

    pkt->stream_index = 0;
    pkt->flags |= AV_PKT_FLAG_KEY;

    ret = FUNC1(&avbuf, &buf);
    if (ret < 0) {
        FUNC6(pkt);
        return ret;
    }

    FUNC11(pkt->data, buf + 80, avbuf.len - 80);
    pkt->size = avbuf.len - 80;
    FUNC4(&buf);
    ret = FUNC7(s->pb, pkt->data + pkt->size, size);
    if (ret < 0) {
        FUNC6(pkt);
        return ret;
    }

    pkt->size += ret;
    pkt->pts = fits->pts;
    fits->pts++;

    return 0;

fail:
    FUNC1(&avbuf, NULL);
    return ret;
}