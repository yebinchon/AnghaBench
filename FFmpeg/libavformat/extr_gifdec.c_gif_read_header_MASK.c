#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_19__ {int /*<<< orphan*/  str; } ;
struct TYPE_18__ {int /*<<< orphan*/  metadata; int /*<<< orphan*/ * pb; TYPE_3__* priv_data; } ;
struct TYPE_17__ {int duration; int nb_frames; TYPE_2__* codecpar; scalar_t__ start_time; } ;
struct TYPE_16__ {int delay; int default_delay; int min_delay; int /*<<< orphan*/  max_delay; } ;
struct TYPE_14__ {int num; int den; } ;
struct TYPE_15__ {int width; int height; TYPE_1__ sample_aspect_ratio; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_3__ GIFDemuxContext ;
typedef  TYPE_4__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_5__ AVFormatContext ;
typedef  TYPE_6__ AVBPrint ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AV_CODEC_ID_GIF ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int GIF_COM_EXT_LABEL ; 
 int GIF_EXTENSION_INTRODUCER ; 
 int GIF_GCE_EXT_LABEL ; 
 int GIF_IMAGE_SEPARATOR ; 
 int GIF_TRAILER ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC5 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_6__*,int) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(AVFormatContext *s)
{
    GIFDemuxContext *gdc = s->priv_data;
    AVIOContext     *pb  = s->pb;
    AVStream        *st;
    int type, width, height, ret, n, flags;
    int64_t nb_frames = 0, duration = 0;

    if ((ret = FUNC14(pb)) < 0)
        return ret;

    gdc->delay  = gdc->default_delay;
    width  = FUNC9(pb);
    height = FUNC9(pb);
    flags = FUNC7(pb);
    FUNC11(pb, 1);
    n      = FUNC7(pb);

    if (width == 0 || height == 0)
        return AVERROR_INVALIDDATA;

    st = FUNC5(s, NULL);
    if (!st)
        return FUNC0(ENOMEM);

    if (flags & 0x80)
        FUNC11(pb, 3 * (1 << ((flags & 0x07) + 1)));

    while ((type = FUNC7(pb)) != GIF_TRAILER) {
        if (FUNC6(pb))
            break;
        if (type == GIF_EXTENSION_INTRODUCER) {
            int subtype = FUNC7(pb);
            if (subtype == GIF_COM_EXT_LABEL) {
                AVBPrint bp;
                int block_size;

                FUNC3(&bp, 0, -1);
                while ((block_size = FUNC7(pb)) != 0) {
                    FUNC8(pb, &bp, block_size);
                }
                FUNC4(&s->metadata, "comment", bp.str, 0);
                FUNC2(&bp, NULL);
            } else if (subtype == GIF_GCE_EXT_LABEL) {
                int block_size = FUNC7(pb);

                if (block_size == 4) {
                    int delay;

                    FUNC11(pb, 1);
                    delay = FUNC9(pb);
                    if (delay < gdc->min_delay)
                        delay = gdc->default_delay;
                    delay = FUNC1(delay, gdc->max_delay);
                    duration += delay;
                    FUNC11(pb, 1);
                } else {
                    FUNC11(pb, block_size);
                }
                FUNC13(pb);
            } else {
                FUNC13(pb);
            }
        } else if (type == GIF_IMAGE_SEPARATOR) {
            FUNC11(pb, 8);
            flags = FUNC7(pb);
            if (flags & 0x80)
                FUNC11(pb, 3 * (1 << ((flags & 0x07) + 1)));
            FUNC11(pb, 1);
            FUNC13(pb);
            nb_frames++;
        } else {
            break;
        }
    }

    /* GIF format operates with time in "hundredths of second",
     * therefore timebase is 1/100 */
    FUNC12(st, 64, 1, 100);
    st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    st->codecpar->codec_id   = AV_CODEC_ID_GIF;
    st->codecpar->width      = width;
    st->codecpar->height     = height;
    st->start_time           = 0;
    st->duration             = duration;
    st->nb_frames            = nb_frames;
    if (n) {
        st->codecpar->sample_aspect_ratio.num = n + 15;
        st->codecpar->sample_aspect_ratio.den = 64;
    }

    /* jump to start because gif decoder needs header data too */
    if (FUNC10(pb, 0, SEEK_SET) != 0)
        return FUNC0(EIO);

    return 0;
}