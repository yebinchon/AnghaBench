#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  ctx_flags; TYPE_2__* pb; TYPE_1__* priv_data; } ;
struct TYPE_14__ {scalar_t__ seekable; } ;
struct TYPE_13__ {scalar_t__ samples_per_frame; int /*<<< orphan*/  frame_rate; TYPE_2__* zpb; void* zbuf_out; void* zbuf_in; int /*<<< orphan*/  zstream; } ;
typedef  TYPE_1__ SWFContext ;
typedef  TYPE_2__ AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVFMTCTX_NOHEADER ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (float,char,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZBUF_SIZE ; 
 scalar_t__ Z_OK ; 
 int /*<<< orphan*/  FUNC2 (void**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zlib_refill ; 

__attribute__((used)) static int FUNC12(AVFormatContext *s)
{
    SWFContext *swf = s->priv_data;
    AVIOContext *pb = s->pb;
    int nbits, len, tag;

    tag = FUNC7(pb) & 0xffffff00;
    FUNC9(pb);

    if (tag == FUNC1('C', 'W', 'S', 0)) {
        FUNC3(s, AV_LOG_INFO, "SWF compressed file detected\n");
#if CONFIG_ZLIB
        swf->zbuf_in  = av_malloc(ZBUF_SIZE);
        swf->zbuf_out = av_malloc(ZBUF_SIZE);
        swf->zpb = avio_alloc_context(swf->zbuf_out, ZBUF_SIZE, 0, s,
                                      zlib_refill, NULL, NULL);
        if (!swf->zbuf_in || !swf->zbuf_out || !swf->zpb)
            return AVERROR(ENOMEM);
        swf->zpb->seekable = 0;
        if (inflateInit(&swf->zstream) != Z_OK) {
            av_log(s, AV_LOG_ERROR, "Unable to init zlib context\n");
            av_freep(&swf->zbuf_in);
            av_freep(&swf->zbuf_out);
            return AVERROR(EINVAL);
        }
        pb = swf->zpb;
#else
        FUNC3(s, AV_LOG_ERROR, "zlib support is required to read SWF compressed files\n");
        return FUNC0(EIO);
#endif
    } else if (tag != FUNC1('F', 'W', 'S', 0))
        return FUNC0(EIO);
    /* skip rectangle size */
    nbits = FUNC6(pb) >> 3;
    len = (4 * nbits - 3 + 7) / 8;
    FUNC10(pb, len);
    swf->frame_rate = FUNC8(pb); /* 8.8 fixed */
    FUNC8(pb); /* frame count */

    swf->samples_per_frame = 0;
    s->ctx_flags |= AVFMTCTX_NOHEADER;
    return 0;
}