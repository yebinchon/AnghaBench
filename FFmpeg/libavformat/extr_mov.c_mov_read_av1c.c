
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int nb_streams; TYPE_3__** streams; } ;
struct TYPE_10__ {int codecpar; } ;
struct TYPE_9__ {int size; } ;
struct TYPE_8__ {TYPE_6__* fc; } ;
typedef TYPE_1__ MOVContext ;
typedef TYPE_2__ MOVAtom ;
typedef TYPE_3__ AVStream ;
typedef int AVIOContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_log (TYPE_6__*,int ,char*) ;
 int avio_skip (int *,int) ;
 int ff_get_extradata (TYPE_6__*,int ,int *,int) ;

__attribute__((used)) static int mov_read_av1c(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    AVStream *st;
    int ret;

    if (c->fc->nb_streams < 1)
        return 0;
    st = c->fc->streams[c->fc->nb_streams - 1];

    if (atom.size < 4) {
        av_log(c->fc, AV_LOG_ERROR, "Empty AV1 Codec Configuration Box\n");
        return AVERROR_INVALIDDATA;
    }



    avio_skip(pb, 4);

    if (atom.size == 4)
        return 0;

    ret = ff_get_extradata(c->fc, st->codecpar, pb, atom.size - 4);
    if (ret < 0)
        return ret;

    return 0;
}
