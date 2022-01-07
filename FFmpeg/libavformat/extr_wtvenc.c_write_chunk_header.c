
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ff_asf_guid ;
struct TYPE_5__ {int nb_index; int serial; scalar_t__ last_chunk_pos; TYPE_2__* index; scalar_t__ timeline_start_pos; } ;
typedef TYPE_1__ WtvContext ;
struct TYPE_6__ {int stream_id; int const* guid; int serial; scalar_t__ pos; } ;
typedef TYPE_2__ WtvChunkEntry ;
struct TYPE_7__ {int * pb; TYPE_1__* priv_data; } ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;


 scalar_t__ MAX_NB_INDEX ;
 int av_assert0 (int) ;
 scalar_t__ avio_tell (int *) ;
 int avio_wl32 (int *,int) ;
 int avio_wl64 (int *,int ) ;
 int const ff_index_guid ;
 int ff_put_guid (int *,int const*) ;

__attribute__((used)) static void write_chunk_header(AVFormatContext *s, const ff_asf_guid *guid, int length, int stream_id)
{
    WtvContext *wctx = s->priv_data;
    AVIOContext *pb = s->pb;

    wctx->last_chunk_pos = avio_tell(pb) - wctx->timeline_start_pos;
    ff_put_guid(pb, guid);
    avio_wl32(pb, 32 + length);
    avio_wl32(pb, stream_id);
    avio_wl64(pb, wctx->serial);

    if ((stream_id & 0x80000000) && guid != &ff_index_guid) {
        WtvChunkEntry *t = wctx->index + wctx->nb_index;
        av_assert0(wctx->nb_index < MAX_NB_INDEX);
        t->pos = wctx->last_chunk_pos;
        t->serial = wctx->serial;
        t->guid = guid;
        t->stream_id = stream_id & 0x3FFFFFFF;
        wctx->nb_index++;
    }
}
