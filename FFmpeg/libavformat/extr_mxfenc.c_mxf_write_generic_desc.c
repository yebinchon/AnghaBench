
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int int64_t ;
typedef int UID ;
struct TYPE_16__ {int const container_ul; } ;
struct TYPE_15__ {int * oformat; int * pb; TYPE_4__* priv_data; } ;
struct TYPE_14__ {int index; TYPE_1__* codecpar; TYPE_3__* priv_data; } ;
struct TYPE_11__ {int den; int num; } ;
struct TYPE_13__ {TYPE_2__ time_base; } ;
struct TYPE_12__ {size_t index; } ;
struct TYPE_10__ {scalar_t__ codec_id; int sample_rate; } ;
typedef TYPE_3__ MXFStreamContext ;
typedef TYPE_4__ MXFContext ;
typedef TYPE_5__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_6__ AVFormatContext ;


 scalar_t__ AV_CODEC_ID_PCM_S16LE ;
 scalar_t__ AV_CODEC_ID_PCM_S24LE ;
 int SubDescriptor ;
 int avio_tell (int *) ;
 int avio_wb32 (int *,int) ;
 int avio_write (int *,int const,int) ;
 int ff_mxf_d10_muxer ;
 int klv_encode_ber4_length (int *,int ) ;
 TYPE_9__* mxf_essence_container_uls ;
 int mxf_write_local_tag (int *,int,int) ;
 int mxf_write_uuid (int *,int ,int) ;

__attribute__((used)) static int64_t mxf_write_generic_desc(AVFormatContext *s, AVStream *st, const UID key)
{
    MXFContext *mxf = s->priv_data;
    MXFStreamContext *sc = st->priv_data;
    AVIOContext *pb = s->pb;
    int64_t pos;

    avio_write(pb, key, 16);
    klv_encode_ber4_length(pb, 0);
    pos = avio_tell(pb);

    mxf_write_local_tag(pb, 16, 0x3C0A);
    mxf_write_uuid(pb, SubDescriptor, st->index);

    mxf_write_local_tag(pb, 4, 0x3006);
    avio_wb32(pb, st->index+2);

    mxf_write_local_tag(pb, 8, 0x3001);
    if (s->oformat == &ff_mxf_d10_muxer) {
        avio_wb32(pb, mxf->time_base.den);
        avio_wb32(pb, mxf->time_base.num);
    } else {
        if (st->codecpar->codec_id == AV_CODEC_ID_PCM_S16LE ||
            st->codecpar->codec_id == AV_CODEC_ID_PCM_S24LE) {
            avio_wb32(pb, st->codecpar->sample_rate);
            avio_wb32(pb, 1);
        } else {
            avio_wb32(pb, mxf->time_base.den);
            avio_wb32(pb, mxf->time_base.num);
        }
    }

    mxf_write_local_tag(pb, 16, 0x3004);
    avio_write(pb, mxf_essence_container_uls[sc->index].container_ul, 16);

    return pos;
}
