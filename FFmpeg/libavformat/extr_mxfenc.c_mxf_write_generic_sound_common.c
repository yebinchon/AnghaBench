
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int int64_t ;
typedef int UID ;
struct TYPE_13__ {int * oformat; TYPE_2__* priv_data; int * pb; } ;
struct TYPE_12__ {TYPE_1__* codecpar; } ;
struct TYPE_11__ {int body_offset; int edit_unit_byte_count; int channel_count; int footer_partition_offset; } ;
struct TYPE_10__ {int sample_rate; int channels; int codec_id; } ;
typedef TYPE_2__ MXFContext ;
typedef TYPE_3__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_4__ AVFormatContext ;


 int AV_LOG_WARNING ;
 int av_get_bits_per_sample (int ) ;
 int av_log (TYPE_4__*,int ,char*) ;
 int avio_w8 (int *,int) ;
 int avio_wb32 (int *,int) ;
 int avio_wb64 (int *,int) ;
 int ff_mxf_d10_muxer ;
 int ff_mxf_opatom_muxer ;
 int mxf_write_generic_desc (TYPE_4__*,TYPE_3__*,int const) ;
 int mxf_write_local_tag (int *,int,int) ;

__attribute__((used)) static int64_t mxf_write_generic_sound_common(AVFormatContext *s, AVStream *st, const UID key)
{
    AVIOContext *pb = s->pb;
    MXFContext *mxf = s->priv_data;
    int show_warnings = !mxf->footer_partition_offset;
    int64_t pos = mxf_write_generic_desc(s, st, key);

    if (s->oformat == &ff_mxf_opatom_muxer) {
        mxf_write_local_tag(pb, 8, 0x3002);
        avio_wb64(pb, mxf->body_offset / mxf->edit_unit_byte_count);
    }


    mxf_write_local_tag(pb, 1, 0x3D02);
    avio_w8(pb, 1);


    mxf_write_local_tag(pb, 8, 0x3D03);
    avio_wb32(pb, st->codecpar->sample_rate);
    avio_wb32(pb, 1);

    if (s->oformat == &ff_mxf_d10_muxer) {
        mxf_write_local_tag(pb, 1, 0x3D04);
        avio_w8(pb, 0);
    }

    mxf_write_local_tag(pb, 4, 0x3D07);
    if (mxf->channel_count == -1) {
        if (show_warnings && (s->oformat == &ff_mxf_d10_muxer) && (st->codecpar->channels != 4) && (st->codecpar->channels != 8))
            av_log(s, AV_LOG_WARNING, "the number of audio channels shall be 4 or 8 : the output will not comply to MXF D-10 specs, use -d10_channelcount to fix this\n");
        avio_wb32(pb, st->codecpar->channels);
    } else if (s->oformat == &ff_mxf_d10_muxer) {
        if (show_warnings && (mxf->channel_count < st->codecpar->channels))
            av_log(s, AV_LOG_WARNING, "d10_channelcount < actual number of audio channels : some channels will be discarded\n");
        if (show_warnings && (mxf->channel_count != 4) && (mxf->channel_count != 8))
            av_log(s, AV_LOG_WARNING, "d10_channelcount shall be set to 4 or 8 : the output will not comply to MXF D-10 specs\n");
        avio_wb32(pb, mxf->channel_count);
    } else {
        avio_wb32(pb, st->codecpar->channels);
    }

    mxf_write_local_tag(pb, 4, 0x3D01);
    avio_wb32(pb, av_get_bits_per_sample(st->codecpar->codec_id));

    return pos;
}
