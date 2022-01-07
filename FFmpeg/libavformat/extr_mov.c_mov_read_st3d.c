
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef enum AVStereo3DType { ____Placeholder_AVStereo3DType } AVStereo3DType ;
struct TYPE_14__ {int nb_streams; TYPE_4__** streams; } ;
struct TYPE_13__ {int type; } ;
struct TYPE_12__ {TYPE_1__* priv_data; } ;
struct TYPE_11__ {int size; } ;
struct TYPE_10__ {TYPE_8__* fc; } ;
struct TYPE_9__ {TYPE_7__* stereo3d; } ;
typedef TYPE_1__ MOVStreamContext ;
typedef TYPE_2__ MOVContext ;
typedef TYPE_3__ MOVAtom ;
typedef TYPE_4__ AVStream ;
typedef int AVIOContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int AV_STEREO3D_2D ;
 int AV_STEREO3D_SIDEBYSIDE ;
 int AV_STEREO3D_TOPBOTTOM ;
 int ENOMEM ;
 int av_log (TYPE_8__*,int ,char*,...) ;
 TYPE_7__* av_stereo3d_alloc () ;
 int avio_r8 (int *) ;
 int avio_skip (int *,int) ;

__attribute__((used)) static int mov_read_st3d(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    AVStream *st;
    MOVStreamContext *sc;
    enum AVStereo3DType type;
    int mode;

    if (c->fc->nb_streams < 1)
        return 0;

    st = c->fc->streams[c->fc->nb_streams - 1];
    sc = st->priv_data;

    if (atom.size < 5) {
        av_log(c->fc, AV_LOG_ERROR, "Empty stereoscopic video box\n");
        return AVERROR_INVALIDDATA;
    }
    avio_skip(pb, 4);

    mode = avio_r8(pb);
    switch (mode) {
    case 0:
        type = AV_STEREO3D_2D;
        break;
    case 1:
        type = AV_STEREO3D_TOPBOTTOM;
        break;
    case 2:
        type = AV_STEREO3D_SIDEBYSIDE;
        break;
    default:
        av_log(c->fc, AV_LOG_WARNING, "Unknown st3d mode value %d\n", mode);
        return 0;
    }

    sc->stereo3d = av_stereo3d_alloc();
    if (!sc->stereo3d)
        return AVERROR(ENOMEM);

    sc->stereo3d->type = type;
    return 0;
}
