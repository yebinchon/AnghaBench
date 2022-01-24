#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_16__ {TYPE_3__** streams; int /*<<< orphan*/ * pb; TYPE_2__* priv_data; } ;
struct TYPE_15__ {size_t stream_index; int size; int /*<<< orphan*/  data; } ;
struct TYPE_14__ {TYPE_1__* codecpar; } ;
struct TYPE_13__ {int flt_entries_nb; unsigned int* flt_entries; int packet_count; scalar_t__ nb_fields; } ;
struct TYPE_12__ {scalar_t__ codec_id; scalar_t__ codec_type; } ;
typedef  TYPE_2__ GXFContext ;
typedef  TYPE_3__ AVStream ;
typedef  TYPE_4__ AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_5__ AVFormatContext ;

/* Variables and functions */
 scalar_t__ AVMEDIA_TYPE_AUDIO ; 
 scalar_t__ AVMEDIA_TYPE_VIDEO ; 
 scalar_t__ AV_CODEC_ID_MPEG2VIDEO ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int GXF_AUDIO_PACKET_SIZE ; 
 int /*<<< orphan*/  PKT_MEDIA ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (unsigned int**,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC9(AVFormatContext *s, AVPacket *pkt)
{
    GXFContext *gxf = s->priv_data;
    AVIOContext *pb = s->pb;
    AVStream *st = s->streams[pkt->stream_index];
    int64_t pos = FUNC2(pb);
    int padding = 0;
    unsigned packet_start_offset = FUNC2(pb) / 1024;
    int ret;

    FUNC6(pb, PKT_MEDIA);
    if (st->codecpar->codec_id == AV_CODEC_ID_MPEG2VIDEO && pkt->size % 4) /* MPEG-2 frames must be padded */
        padding = 4 - pkt->size % 4;
    else if (st->codecpar->codec_type == AVMEDIA_TYPE_AUDIO)
        padding = GXF_AUDIO_PACKET_SIZE - pkt->size;
    FUNC5(s, pkt, pkt->size + padding);
    FUNC3(pb, pkt->data, pkt->size);
    FUNC7(pb, padding);

    if (st->codecpar->codec_type == AVMEDIA_TYPE_VIDEO) {
        if (!(gxf->flt_entries_nb % 500)) {
            int err;
            if ((err = FUNC1(&gxf->flt_entries,
                                         gxf->flt_entries_nb + 500,
                                         sizeof(*gxf->flt_entries))) < 0) {
                gxf->flt_entries_nb = 0;
                gxf->nb_fields = 0;
                FUNC0(s, AV_LOG_ERROR, "could not reallocate flt entries\n");
                return err;
            }
        }
        gxf->flt_entries[gxf->flt_entries_nb++] = packet_start_offset;
        gxf->nb_fields += 2; // count fields
    }

    FUNC8(pb, pos);

    gxf->packet_count++;
    if (gxf->packet_count == 100) {
        if ((ret = FUNC4(s, 0)) < 0)
            return ret;
        gxf->packet_count = 0;
    }

    return 0;
}