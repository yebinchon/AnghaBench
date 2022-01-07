
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


struct TYPE_14__ {void* MaxFALL; void* MaxCLL; } ;
struct TYPE_13__ {int nb_streams; TYPE_1__** streams; } ;
struct TYPE_12__ {int size; } ;
struct TYPE_11__ {TYPE_7__* fc; } ;
struct TYPE_10__ {TYPE_8__* coll; int coll_size; } ;
struct TYPE_9__ {TYPE_2__* priv_data; } ;
typedef TYPE_2__ MOVStreamContext ;
typedef TYPE_3__ MOVContext ;
typedef TYPE_4__ MOVAtom ;
typedef int AVIOContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 TYPE_8__* av_content_light_metadata_alloc (int *) ;
 int av_log (TYPE_7__*,int ,char*) ;
 void* avio_rb16 (int *) ;

__attribute__((used)) static int mov_read_clli(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    MOVStreamContext *sc;

    if (c->fc->nb_streams < 1)
        return AVERROR_INVALIDDATA;

    sc = c->fc->streams[c->fc->nb_streams - 1]->priv_data;

    if (atom.size < 4) {
        av_log(c->fc, AV_LOG_ERROR, "Empty Content Light Level Info box\n");
        return AVERROR_INVALIDDATA;
    }

    sc->coll = av_content_light_metadata_alloc(&sc->coll_size);
    if (!sc->coll)
        return AVERROR(ENOMEM);

    sc->coll->MaxCLL = avio_rb16(pb);
    sc->coll->MaxFALL = avio_rb16(pb);

    return 0;
}
