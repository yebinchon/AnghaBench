
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef void* int64_t ;
struct TYPE_14__ {int nb_streams; TYPE_5__** streams; } ;
struct TYPE_13__ {scalar_t__ id; TYPE_1__* priv_data; } ;
struct TYPE_11__ {scalar_t__ track_id; int stsd_id; } ;
struct TYPE_12__ {int frag_index; TYPE_8__* fc; TYPE_3__ fragment; } ;
struct TYPE_10__ {void* tfdt_dts; } ;
struct TYPE_9__ {int pseudo_stream_id; void* track_end; } ;
typedef TYPE_1__ MOVStreamContext ;
typedef TYPE_2__ MOVFragmentStreamInfo ;
typedef TYPE_3__ MOVFragment ;
typedef TYPE_4__ MOVContext ;
typedef int MOVAtom ;
typedef TYPE_5__ AVStream ;
typedef int AVIOContext ;


 int AV_LOG_WARNING ;
 int av_log (TYPE_8__*,int ,char*,scalar_t__) ;
 int avio_r8 (int *) ;
 int avio_rb24 (int *) ;
 void* avio_rb32 (int *) ;
 void* avio_rb64 (int *) ;
 TYPE_2__* get_current_frag_stream_info (int *) ;

__attribute__((used)) static int mov_read_tfdt(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    MOVFragment *frag = &c->fragment;
    AVStream *st = ((void*)0);
    MOVStreamContext *sc;
    int version, i;
    MOVFragmentStreamInfo * frag_stream_info;
    int64_t base_media_decode_time;

    for (i = 0; i < c->fc->nb_streams; i++) {
        if (c->fc->streams[i]->id == frag->track_id) {
            st = c->fc->streams[i];
            break;
        }
    }
    if (!st) {
        av_log(c->fc, AV_LOG_WARNING, "could not find corresponding track id %u\n", frag->track_id);
        return 0;
    }
    sc = st->priv_data;
    if (sc->pseudo_stream_id + 1 != frag->stsd_id && sc->pseudo_stream_id != -1)
        return 0;
    version = avio_r8(pb);
    avio_rb24(pb);
    if (version) {
        base_media_decode_time = avio_rb64(pb);
    } else {
        base_media_decode_time = avio_rb32(pb);
    }

    frag_stream_info = get_current_frag_stream_info(&c->frag_index);
    if (frag_stream_info)
        frag_stream_info->tfdt_dts = base_media_decode_time;
    sc->track_end = base_media_decode_time;

    return 0;
}
