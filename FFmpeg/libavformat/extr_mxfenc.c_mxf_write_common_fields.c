
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int * oformat; int * pb; TYPE_2__* priv_data; } ;
struct TYPE_12__ {TYPE_1__* codecpar; } ;
struct TYPE_11__ {int uid; } ;
struct TYPE_10__ {int body_offset; int edit_unit_byte_count; int duration; TYPE_4__* timecode_track; } ;
struct TYPE_9__ {scalar_t__ codec_type; } ;
typedef TYPE_2__ MXFContext ;
typedef TYPE_3__ MXFCodecUL ;
typedef TYPE_4__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_5__ AVFormatContext ;


 scalar_t__ AVMEDIA_TYPE_AUDIO ;
 int avio_wb64 (int *,int) ;
 int avio_write (int *,int ,int) ;
 int ff_mxf_opatom_muxer ;
 TYPE_3__* mxf_get_data_definition_ul (scalar_t__) ;
 int mxf_write_local_tag (int *,int,int) ;
 int smpte_12m_timecode_track_data_ul ;

__attribute__((used)) static void mxf_write_common_fields(AVFormatContext *s, AVStream *st)
{
    MXFContext *mxf = s->priv_data;
    AVIOContext *pb = s->pb;


    mxf_write_local_tag(pb, 16, 0x0201);
    if (st == mxf->timecode_track)
        avio_write(pb, smpte_12m_timecode_track_data_ul, 16);
    else {
        const MXFCodecUL *data_def_ul = mxf_get_data_definition_ul(st->codecpar->codec_type);
        avio_write(pb, data_def_ul->uid, 16);
    }


    mxf_write_local_tag(pb, 8, 0x0202);

    if (st != mxf->timecode_track && s->oformat == &ff_mxf_opatom_muxer && st->codecpar->codec_type == AVMEDIA_TYPE_AUDIO) {
        avio_wb64(pb, mxf->body_offset / mxf->edit_unit_byte_count);
    } else {
        avio_wb64(pb, mxf->duration);
    }
}
