
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int nb_streams; TYPE_4__** streams; } ;
struct TYPE_11__ {TYPE_1__* codecpar; } ;
struct TYPE_10__ {int size; } ;
struct TYPE_9__ {TYPE_7__* fc; } ;
struct TYPE_8__ {int color_primaries; int color_trc; int color_space; int color_range; } ;
typedef TYPE_2__ MOVContext ;
typedef TYPE_3__ MOVAtom ;
typedef TYPE_4__ AVStream ;
typedef int AVIOContext ;


 int AVCOL_PRI_UNSPECIFIED ;
 int AVCOL_RANGE_JPEG ;
 int AVCOL_RANGE_MPEG ;
 int AVCOL_SPC_UNSPECIFIED ;
 int AVCOL_TRC_UNSPECIFIED ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int av_color_primaries_name (int) ;
 int av_color_space_name (int) ;
 int av_color_transfer_name (int) ;
 int av_log (TYPE_7__*,int ,char*,...) ;
 int avio_r8 (int *) ;
 scalar_t__ avio_rb16 (int *) ;
 int avio_skip (int *,int) ;

__attribute__((used)) static int mov_read_vpcc(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    AVStream *st;
    int version, color_range, color_primaries, color_trc, color_space;

    if (c->fc->nb_streams < 1)
        return 0;
    st = c->fc->streams[c->fc->nb_streams - 1];

    if (atom.size < 5) {
        av_log(c->fc, AV_LOG_ERROR, "Empty VP Codec Configuration box\n");
        return AVERROR_INVALIDDATA;
    }

    version = avio_r8(pb);
    if (version != 1) {
        av_log(c->fc, AV_LOG_WARNING, "Unsupported VP Codec Configuration box version %d\n", version);
        return 0;
    }
    avio_skip(pb, 3);

    avio_skip(pb, 2);
    color_range = avio_r8(pb);
    color_primaries = avio_r8(pb);
    color_trc = avio_r8(pb);
    color_space = avio_r8(pb);
    if (avio_rb16(pb))
        return AVERROR_INVALIDDATA;

    if (!av_color_primaries_name(color_primaries))
        color_primaries = AVCOL_PRI_UNSPECIFIED;
    if (!av_color_transfer_name(color_trc))
        color_trc = AVCOL_TRC_UNSPECIFIED;
    if (!av_color_space_name(color_space))
        color_space = AVCOL_SPC_UNSPECIFIED;

    st->codecpar->color_range = (color_range & 1) ? AVCOL_RANGE_JPEG : AVCOL_RANGE_MPEG;
    st->codecpar->color_primaries = color_primaries;
    st->codecpar->color_trc = color_trc;
    st->codecpar->color_space = color_space;

    return 0;
}
