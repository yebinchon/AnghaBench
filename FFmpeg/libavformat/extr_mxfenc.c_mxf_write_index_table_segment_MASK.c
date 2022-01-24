#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_16__ {int nb_streams; TYPE_6__** streams; int /*<<< orphan*/ * pb; TYPE_5__* priv_data; } ;
struct TYPE_15__ {TYPE_4__* priv_data; } ;
struct TYPE_10__ {int den; int num; } ;
struct TYPE_14__ {int last_key_index; int edit_units_count; int edit_unit_byte_count; int last_indexed_edit_unit; TYPE_3__* index_entries; TYPE_1__ time_base; } ;
struct TYPE_11__ {int* samples; int sample_size; } ;
struct TYPE_13__ {int temporal_reordering; int slice_offset; void* b_picture_count; void* max_gop; TYPE_2__ aic; } ;
struct TYPE_12__ {int flags; int temporal_ref; int offset; int slice_offset; } ;
typedef  TYPE_4__ MXFStreamContext ;
typedef  TYPE_5__ MXFContext ;
typedef  TYPE_6__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_7__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 void* FUNC0 (void*,int) ; 
 int /*<<< orphan*/  IndexTableSegment ; 
 int KAG_SIZE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  index_table_segment_key ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(AVFormatContext *s)
{
    MXFContext *mxf = s->priv_data;
    AVIOContext *pb = s->pb;
    int i, j, temporal_reordering = 0;
    int key_index = mxf->last_key_index;
    int prev_non_b_picture = 0;
    int audio_frame_size = 0;
    int64_t pos;

    FUNC1(s, AV_LOG_DEBUG, "edit units count %d\n", mxf->edit_units_count);

    if (!mxf->edit_units_count && !mxf->edit_unit_byte_count)
        return;

    FUNC6(pb, index_table_segment_key, 16);

    FUNC7(pb, 0);
    pos = FUNC2(pb);

    // instance id
    FUNC10(pb, 16, 0x3C0A);
    FUNC11(pb, IndexTableSegment, 0);

    // index edit rate
    FUNC10(pb, 8, 0x3F0B);
    FUNC4(pb, mxf->time_base.den);
    FUNC4(pb, mxf->time_base.num);

    // index start position
    FUNC10(pb, 8, 0x3F0C);
    FUNC5(pb, mxf->last_indexed_edit_unit);

    // index duration
    FUNC10(pb, 8, 0x3F0D);
    if (mxf->edit_unit_byte_count)
        FUNC5(pb, 0); // index table covers whole container
    else
        FUNC5(pb, mxf->edit_units_count);

    // edit unit byte count
    FUNC10(pb, 4, 0x3F05);
    FUNC4(pb, mxf->edit_unit_byte_count);

    // index sid
    FUNC10(pb, 4, 0x3F06);
    FUNC4(pb, 2);

    // body sid
    FUNC10(pb, 4, 0x3F07);
    FUNC4(pb, 1);

    // real slice count - 1
    FUNC10(pb, 1, 0x3F08);
    FUNC3(pb, !mxf->edit_unit_byte_count); // only one slice for CBR

    // delta entry array
    FUNC10(pb, 8 + (s->nb_streams+1)*6, 0x3F09);
    FUNC4(pb, s->nb_streams+1); // num of entries
    FUNC4(pb, 6);               // size of one entry
    // write system item delta entry
    FUNC3(pb, 0);
    FUNC3(pb, 0); // slice entry
    FUNC4(pb, 0); // element delta
    // write each stream delta entry
    for (i = 0; i < s->nb_streams; i++) {
        AVStream *st = s->streams[i];
        MXFStreamContext *sc = st->priv_data;
        FUNC3(pb, sc->temporal_reordering);
        if (sc->temporal_reordering)
            temporal_reordering = 1;
        if (mxf->edit_unit_byte_count) {
            FUNC3(pb, 0); // slice number
            FUNC4(pb, sc->slice_offset);
        } else if (i == 0) { // video track
            FUNC3(pb, 0); // slice number
            FUNC4(pb, KAG_SIZE); // system item size including klv fill
        } else { // audio or data track
            if (!audio_frame_size) {
                audio_frame_size = sc->aic.samples[0]*sc->aic.sample_size;
                audio_frame_size += FUNC8(audio_frame_size);
            }
            FUNC3(pb, 1);
            FUNC4(pb, (i-1)*audio_frame_size); // element delta
        }
    }

    if (!mxf->edit_unit_byte_count) {
        MXFStreamContext *sc = s->streams[0]->priv_data;
        FUNC10(pb, 8 + mxf->edit_units_count*15, 0x3F0A);
        FUNC4(pb, mxf->edit_units_count);  // num of entries
        FUNC4(pb, 15);  // size of one entry

        for (i = 0; i < mxf->edit_units_count; i++) {
            int temporal_offset = 0;

            if (!(mxf->index_entries[i].flags & 0x33)) { // I-frame
                sc->max_gop = FUNC0(sc->max_gop, i - mxf->last_key_index);
                mxf->last_key_index = key_index;
                key_index = i;
            }

            if (temporal_reordering) {
                int pic_num_in_gop = i - key_index;
                if (pic_num_in_gop != mxf->index_entries[i].temporal_ref) {
                    for (j = key_index; j < mxf->edit_units_count; j++) {
                        if (pic_num_in_gop == mxf->index_entries[j].temporal_ref)
                            break;
                    }
                    if (j == mxf->edit_units_count)
                        FUNC1(s, AV_LOG_WARNING, "missing frames\n");
                    temporal_offset = j - key_index - pic_num_in_gop;
                }
            }
            FUNC3(pb, temporal_offset);

            if ((mxf->index_entries[i].flags & 0x30) == 0x30) { // back and forward prediction
                sc->b_picture_count = FUNC0(sc->b_picture_count, i - prev_non_b_picture);
                FUNC3(pb, mxf->last_key_index - i);
            } else {
                FUNC3(pb, key_index - i); // key frame offset
                if ((mxf->index_entries[i].flags & 0x20) == 0x20) // only forward
                    mxf->last_key_index = key_index;
                prev_non_b_picture = i;
            }

            if (!(mxf->index_entries[i].flags & 0x33) && // I-frame
                mxf->index_entries[i].flags & 0x40 && !temporal_offset)
                mxf->index_entries[i].flags |= 0x80; // random access
            FUNC3(pb, mxf->index_entries[i].flags);
            // stream offset
            FUNC5(pb, mxf->index_entries[i].offset);
            if (s->nb_streams > 1)
                FUNC4(pb, mxf->index_entries[i].slice_offset);
            else
                FUNC4(pb, 0);
        }

        mxf->last_key_index = key_index - mxf->edit_units_count;
        mxf->last_indexed_edit_unit += mxf->edit_units_count;
        mxf->edit_units_count = 0;
    }

    FUNC9(pb, pos);
}