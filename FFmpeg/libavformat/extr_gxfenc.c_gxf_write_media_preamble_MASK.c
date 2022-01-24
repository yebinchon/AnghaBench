#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_17__ {TYPE_5__** streams; int /*<<< orphan*/ * pb; TYPE_4__* priv_data; } ;
struct TYPE_16__ {size_t stream_index; int /*<<< orphan*/  size; int /*<<< orphan*/  data; int /*<<< orphan*/  dts; } ;
struct TYPE_15__ {int index; TYPE_2__* codecpar; TYPE_3__* priv_data; } ;
struct TYPE_11__ {int num; int /*<<< orphan*/  den; } ;
struct TYPE_14__ {unsigned int nb_fields; TYPE_1__ time_base; } ;
struct TYPE_13__ {int media_type; int /*<<< orphan*/  pframes; int /*<<< orphan*/  bframes; int /*<<< orphan*/  iframes; } ;
struct TYPE_12__ {scalar_t__ codec_type; scalar_t__ codec_id; } ;
typedef  TYPE_3__ GXFStreamContext ;
typedef  TYPE_4__ GXFContext ;
typedef  TYPE_5__ AVStream ;
typedef  TYPE_6__ AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_7__ AVFormatContext ;

/* Variables and functions */
 scalar_t__ AVMEDIA_TYPE_AUDIO ; 
 scalar_t__ AVMEDIA_TYPE_VIDEO ; 
 scalar_t__ AV_CODEC_ID_DVVIDEO ; 
 scalar_t__ AV_CODEC_ID_MPEG2VIDEO ; 
 int AV_PICTURE_TYPE_B ; 
 int AV_PICTURE_TYPE_I ; 
 int /*<<< orphan*/  AV_ROUND_UP ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(AVFormatContext *s, AVPacket *pkt, int size)
{
    GXFContext *gxf = s->priv_data;
    AVIOContext *pb = s->pb;
    AVStream *st = s->streams[pkt->stream_index];
    GXFStreamContext *sc = st->priv_data;
    unsigned field_nb;
    /* If the video is frame-encoded, the frame numbers shall be represented by
     * even field numbers.
     * see SMPTE360M-2004  6.4.2.1.3 Media field number */
    if (st->codecpar->codec_type == AVMEDIA_TYPE_VIDEO) {
        field_nb = gxf->nb_fields;
    } else {
        field_nb = FUNC0(pkt->dts, gxf->time_base.den,
                                  (int64_t)48000*gxf->time_base.num, AV_ROUND_UP);
    }

    FUNC1(pb, sc->media_type);
    FUNC1(pb, st->index);
    FUNC4(pb, field_nb);
    if (st->codecpar->codec_type == AVMEDIA_TYPE_AUDIO) {
        FUNC2(pb, 0);
        FUNC2(pb, size / 2);
    } else if (st->codecpar->codec_id == AV_CODEC_ID_MPEG2VIDEO) {
        int frame_type = FUNC5(sc, pkt->data, pkt->size);
        if (frame_type == AV_PICTURE_TYPE_I) {
            FUNC1(pb, 0x0d);
            sc->iframes++;
        } else if (frame_type == AV_PICTURE_TYPE_B) {
            FUNC1(pb, 0x0f);
            sc->bframes++;
        } else {
            FUNC1(pb, 0x0e);
            sc->pframes++;
        }
        FUNC3(pb, size);
    } else if (st->codecpar->codec_id == AV_CODEC_ID_DVVIDEO) {
        FUNC1(pb, size / 4096);
        FUNC3(pb, 0);
    } else
        FUNC4(pb, size);
    FUNC4(pb, field_nb);
    FUNC1(pb, 1); /* flags */
    FUNC1(pb, 0); /* reserved */
    return 16;
}