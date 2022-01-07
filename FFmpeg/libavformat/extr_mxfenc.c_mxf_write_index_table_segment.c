
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_16__ {int nb_streams; TYPE_6__** streams; int * pb; TYPE_5__* priv_data; } ;
struct TYPE_15__ {TYPE_4__* priv_data; } ;
struct TYPE_10__ {int den; int num; } ;
struct TYPE_14__ {int last_key_index; int edit_units_count; int edit_unit_byte_count; int last_indexed_edit_unit; TYPE_3__* index_entries; TYPE_1__ time_base; } ;
struct TYPE_11__ {int* samples; int sample_size; } ;
struct TYPE_13__ {int temporal_reordering; int slice_offset; void* b_picture_count; void* max_gop; TYPE_2__ aic; } ;
struct TYPE_12__ {int flags; int temporal_ref; int offset; int slice_offset; } ;
typedef TYPE_4__ MXFStreamContext ;
typedef TYPE_5__ MXFContext ;
typedef TYPE_6__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_7__ AVFormatContext ;


 int AV_LOG_DEBUG ;
 int AV_LOG_WARNING ;
 void* FFMAX (void*,int) ;
 int IndexTableSegment ;
 int KAG_SIZE ;
 int av_log (TYPE_7__*,int ,char*,...) ;
 int avio_tell (int *) ;
 int avio_w8 (int *,int) ;
 int avio_wb32 (int *,int) ;
 int avio_wb64 (int *,int) ;
 int avio_write (int *,int ,int) ;
 int index_table_segment_key ;
 int klv_encode_ber4_length (int *,int ) ;
 scalar_t__ klv_fill_size (int) ;
 int mxf_update_klv_size (int *,int ) ;
 int mxf_write_local_tag (int *,int,int) ;
 int mxf_write_uuid (int *,int ,int ) ;

__attribute__((used)) static void mxf_write_index_table_segment(AVFormatContext *s)
{
    MXFContext *mxf = s->priv_data;
    AVIOContext *pb = s->pb;
    int i, j, temporal_reordering = 0;
    int key_index = mxf->last_key_index;
    int prev_non_b_picture = 0;
    int audio_frame_size = 0;
    int64_t pos;

    av_log(s, AV_LOG_DEBUG, "edit units count %d\n", mxf->edit_units_count);

    if (!mxf->edit_units_count && !mxf->edit_unit_byte_count)
        return;

    avio_write(pb, index_table_segment_key, 16);

    klv_encode_ber4_length(pb, 0);
    pos = avio_tell(pb);


    mxf_write_local_tag(pb, 16, 0x3C0A);
    mxf_write_uuid(pb, IndexTableSegment, 0);


    mxf_write_local_tag(pb, 8, 0x3F0B);
    avio_wb32(pb, mxf->time_base.den);
    avio_wb32(pb, mxf->time_base.num);


    mxf_write_local_tag(pb, 8, 0x3F0C);
    avio_wb64(pb, mxf->last_indexed_edit_unit);


    mxf_write_local_tag(pb, 8, 0x3F0D);
    if (mxf->edit_unit_byte_count)
        avio_wb64(pb, 0);
    else
        avio_wb64(pb, mxf->edit_units_count);


    mxf_write_local_tag(pb, 4, 0x3F05);
    avio_wb32(pb, mxf->edit_unit_byte_count);


    mxf_write_local_tag(pb, 4, 0x3F06);
    avio_wb32(pb, 2);


    mxf_write_local_tag(pb, 4, 0x3F07);
    avio_wb32(pb, 1);


    mxf_write_local_tag(pb, 1, 0x3F08);
    avio_w8(pb, !mxf->edit_unit_byte_count);


    mxf_write_local_tag(pb, 8 + (s->nb_streams+1)*6, 0x3F09);
    avio_wb32(pb, s->nb_streams+1);
    avio_wb32(pb, 6);

    avio_w8(pb, 0);
    avio_w8(pb, 0);
    avio_wb32(pb, 0);

    for (i = 0; i < s->nb_streams; i++) {
        AVStream *st = s->streams[i];
        MXFStreamContext *sc = st->priv_data;
        avio_w8(pb, sc->temporal_reordering);
        if (sc->temporal_reordering)
            temporal_reordering = 1;
        if (mxf->edit_unit_byte_count) {
            avio_w8(pb, 0);
            avio_wb32(pb, sc->slice_offset);
        } else if (i == 0) {
            avio_w8(pb, 0);
            avio_wb32(pb, KAG_SIZE);
        } else {
            if (!audio_frame_size) {
                audio_frame_size = sc->aic.samples[0]*sc->aic.sample_size;
                audio_frame_size += klv_fill_size(audio_frame_size);
            }
            avio_w8(pb, 1);
            avio_wb32(pb, (i-1)*audio_frame_size);
        }
    }

    if (!mxf->edit_unit_byte_count) {
        MXFStreamContext *sc = s->streams[0]->priv_data;
        mxf_write_local_tag(pb, 8 + mxf->edit_units_count*15, 0x3F0A);
        avio_wb32(pb, mxf->edit_units_count);
        avio_wb32(pb, 15);

        for (i = 0; i < mxf->edit_units_count; i++) {
            int temporal_offset = 0;

            if (!(mxf->index_entries[i].flags & 0x33)) {
                sc->max_gop = FFMAX(sc->max_gop, i - mxf->last_key_index);
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
                        av_log(s, AV_LOG_WARNING, "missing frames\n");
                    temporal_offset = j - key_index - pic_num_in_gop;
                }
            }
            avio_w8(pb, temporal_offset);

            if ((mxf->index_entries[i].flags & 0x30) == 0x30) {
                sc->b_picture_count = FFMAX(sc->b_picture_count, i - prev_non_b_picture);
                avio_w8(pb, mxf->last_key_index - i);
            } else {
                avio_w8(pb, key_index - i);
                if ((mxf->index_entries[i].flags & 0x20) == 0x20)
                    mxf->last_key_index = key_index;
                prev_non_b_picture = i;
            }

            if (!(mxf->index_entries[i].flags & 0x33) &&
                mxf->index_entries[i].flags & 0x40 && !temporal_offset)
                mxf->index_entries[i].flags |= 0x80;
            avio_w8(pb, mxf->index_entries[i].flags);

            avio_wb64(pb, mxf->index_entries[i].offset);
            if (s->nb_streams > 1)
                avio_wb32(pb, mxf->index_entries[i].slice_offset);
            else
                avio_wb32(pb, 0);
        }

        mxf->last_key_index = key_index - mxf->edit_units_count;
        mxf->last_indexed_edit_unit += mxf->edit_units_count;
        mxf->edit_units_count = 0;
    }

    mxf_update_klv_size(pb, pos);
}
