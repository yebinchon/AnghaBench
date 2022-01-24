#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_47__   TYPE_7__ ;
typedef  struct TYPE_46__   TYPE_6__ ;
typedef  struct TYPE_45__   TYPE_5__ ;
typedef  struct TYPE_44__   TYPE_4__ ;
typedef  struct TYPE_43__   TYPE_3__ ;
typedef  struct TYPE_42__   TYPE_38__ ;
typedef  struct TYPE_41__   TYPE_2__ ;
typedef  struct TYPE_40__   TYPE_1__ ;

/* Type definitions */
struct TYPE_47__ {int /*<<< orphan*/ * oformat; TYPE_5__** streams; int /*<<< orphan*/ * pb; TYPE_4__* priv_data; } ;
struct TYPE_46__ {size_t stream_index; int size; int /*<<< orphan*/  data; } ;
struct TYPE_45__ {int index; TYPE_1__* codecpar; TYPE_2__* priv_data; } ;
struct TYPE_44__ {int edit_units_count; int header_written; int body_offset; TYPE_38__* index_entries; scalar_t__ edit_unit_byte_count; scalar_t__ cbr_index; } ;
struct TYPE_43__ {int flags; int /*<<< orphan*/  temporal_ref; int /*<<< orphan*/  member_0; } ;
struct TYPE_42__ {int offset; int flags; int slice_offset; int /*<<< orphan*/  temporal_ref; } ;
struct TYPE_41__ {int frame_size; int /*<<< orphan*/  track_essence_element_key; } ;
struct TYPE_40__ {scalar_t__ codec_id; scalar_t__ codec_type; } ;
typedef  TYPE_2__ MXFStreamContext ;
typedef  TYPE_3__ MXFIndexEntry ;
typedef  TYPE_4__ MXFContext ;
typedef  TYPE_5__ AVStream ;
typedef  TYPE_6__ AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_7__ AVFormatContext ;

/* Variables and functions */
 int AVERROR_PATCHWELCOME ; 
 scalar_t__ AVMEDIA_TYPE_AUDIO ; 
 scalar_t__ AVMEDIA_TYPE_VIDEO ; 
 scalar_t__ AV_CODEC_ID_DNXHD ; 
 scalar_t__ AV_CODEC_ID_DVVIDEO ; 
 scalar_t__ AV_CODEC_ID_H264 ; 
 scalar_t__ AV_CODEC_ID_MPEG2VIDEO ; 
 scalar_t__ AV_CODEC_ID_PRORES ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int EDIT_UNITS_PER_BODY ; 
 int KAG_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_7__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (TYPE_38__**,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  body_partition_key ; 
 int /*<<< orphan*/  ff_mxf_d10_muxer ; 
 int /*<<< orphan*/  ff_mxf_opatom_muxer ; 
 int /*<<< orphan*/  header_open_partition_key ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*,TYPE_5__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*,TYPE_5__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_7__*,TYPE_5__*,TYPE_6__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_7__*,TYPE_5__*,TYPE_6__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_7__*,TYPE_5__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_7__*,TYPE_5__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_7__*) ; 
 int FUNC15 (TYPE_7__*,TYPE_6__*,TYPE_3__*) ; 
 int FUNC16 (TYPE_7__*,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_7__*) ; 

__attribute__((used)) static int FUNC18(AVFormatContext *s, AVPacket *pkt)
{
    MXFContext *mxf = s->priv_data;
    AVIOContext *pb = s->pb;
    AVStream *st = s->streams[pkt->stream_index];
    MXFStreamContext *sc = st->priv_data;
    MXFIndexEntry ie = {0};
    int err;

    if (!mxf->cbr_index && !mxf->edit_unit_byte_count && !(mxf->edit_units_count % EDIT_UNITS_PER_BODY)) {
        if ((err = FUNC1(&mxf->index_entries, mxf->edit_units_count
                                     + EDIT_UNITS_PER_BODY, sizeof(*mxf->index_entries))) < 0) {
            mxf->edit_units_count = 0;
            FUNC0(s, AV_LOG_ERROR, "could not allocate index entries\n");
            return err;
        }
    }

    if (st->codecpar->codec_id == AV_CODEC_ID_MPEG2VIDEO) {
        if (!FUNC10(s, st, pkt, &ie)) {
            FUNC0(s, AV_LOG_ERROR, "could not get mpeg2 profile and level\n");
            return -1;
        }
    } else if (st->codecpar->codec_id == AV_CODEC_ID_DNXHD) {
        if (!FUNC7(s, st, pkt)) {
            FUNC0(s, AV_LOG_ERROR, "could not get dnxhd profile\n");
            return -1;
        }
    } else if (st->codecpar->codec_id == AV_CODEC_ID_PRORES) {
        if (!FUNC11(s, st, pkt)) {
            FUNC0(s, AV_LOG_ERROR, "could not get prores profile\n");
            return -1;
        }
    } else if (st->codecpar->codec_id == AV_CODEC_ID_DVVIDEO) {
        if (!FUNC8(s, st, pkt)) {
            FUNC0(s, AV_LOG_ERROR, "could not get dv profile\n");
            return -1;
        }
    } else if (st->codecpar->codec_id == AV_CODEC_ID_H264) {
        if (!FUNC9(s, st, pkt, &ie)) {
            FUNC0(s, AV_LOG_ERROR, "could not get h264 profile\n");
            return -1;
        }
    }

    if (mxf->cbr_index) {
        if (pkt->size != sc->frame_size && st->codecpar->codec_type == AVMEDIA_TYPE_VIDEO) {
            FUNC0(s, AV_LOG_ERROR, "track %d: frame size does not match index unit size, %d != %d\n",
                   st->index, pkt->size, sc->frame_size);
            return -1;
        }
        if (!mxf->header_written)
            FUNC6(s);
    }

    if (s->oformat == &ff_mxf_opatom_muxer)
        return FUNC15(s, pkt, &ie);

    if (!mxf->header_written) {
        if (mxf->edit_unit_byte_count) {
            if ((err = FUNC16(s, 1, 2, header_open_partition_key, 1)) < 0)
                return err;
            FUNC14(s);
            FUNC13(s);
        } else {
            if ((err = FUNC16(s, 0, 0, header_open_partition_key, 1)) < 0)
                return err;
        }
        mxf->header_written = 1;
    }

    if (st->index == 0) {
        if (!mxf->edit_unit_byte_count &&
            (!mxf->edit_units_count || mxf->edit_units_count > EDIT_UNITS_PER_BODY) &&
            !(ie.flags & 0x33)) { // I-frame, GOP start
            FUNC14(s);
            if ((err = FUNC16(s, 1, 2, body_partition_key, 0)) < 0)
                return err;
            FUNC14(s);
            FUNC13(s);
        }

        FUNC14(s);
        FUNC17(s);

        if (!mxf->edit_unit_byte_count) {
            mxf->index_entries[mxf->edit_units_count].offset = mxf->body_offset;
            mxf->index_entries[mxf->edit_units_count].flags = ie.flags;
            mxf->index_entries[mxf->edit_units_count].temporal_ref = ie.temporal_ref;
            mxf->body_offset += KAG_SIZE; // size of system element
        }
        mxf->edit_units_count++;
    } else if (!mxf->edit_unit_byte_count && st->index == 1) {
        if (!mxf->edit_units_count) {
            FUNC0(s, AV_LOG_ERROR, "No packets in first stream\n");
            return AVERROR_PATCHWELCOME;
        }
        mxf->index_entries[mxf->edit_units_count-1].slice_offset =
            mxf->body_offset - mxf->index_entries[mxf->edit_units_count-1].offset;
    }

    FUNC14(s);
    FUNC3(pb, sc->track_essence_element_key, 16); // write key
    if (s->oformat == &ff_mxf_d10_muxer &&
        st->codecpar->codec_type == AVMEDIA_TYPE_AUDIO) {
        FUNC12(s, st, pkt);
    } else {
        FUNC4(pb, pkt->size); // write length
        FUNC3(pb, pkt->data, pkt->size);
        mxf->body_offset += 16+4+pkt->size + FUNC5(16+4+pkt->size);
    }

    FUNC2(pb);

    return 0;
}