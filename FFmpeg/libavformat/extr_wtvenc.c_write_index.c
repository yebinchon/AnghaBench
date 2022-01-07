
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int nb_index; scalar_t__ last_chunk_pos; scalar_t__ first_index_pos; TYPE_2__* index; } ;
typedef TYPE_1__ WtvContext ;
struct TYPE_8__ {int serial; int stream_id; int pos; int guid; } ;
typedef TYPE_2__ WtvChunkEntry ;
struct TYPE_9__ {TYPE_1__* priv_data; int * pb; } ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;


 int avio_wl32 (int *,int ) ;
 int avio_wl64 (int *,int ) ;
 int ff_index_guid ;
 int ff_put_guid (int *,int ) ;
 int finish_chunk_noindex (TYPE_3__*) ;
 int write_chunk_header2 (TYPE_3__*,int *,int) ;

__attribute__((used)) static void write_index(AVFormatContext *s)
{
    AVIOContext *pb = s->pb;
    WtvContext *wctx = s->priv_data;
    int i;

    write_chunk_header2(s, &ff_index_guid, 0x80000000);
    avio_wl32(pb, 0);
    avio_wl32(pb, 0);

    for (i = 0; i < wctx->nb_index; i++) {
        WtvChunkEntry *t = wctx->index + i;
        ff_put_guid(pb, t->guid);
        avio_wl64(pb, t->pos);
        avio_wl32(pb, t->stream_id);
        avio_wl32(pb, 0);
        avio_wl64(pb, t->serial);
    }
    wctx->nb_index = 0;
    finish_chunk_noindex(s);

    if (!wctx->first_index_pos)
        wctx->first_index_pos = wctx->last_chunk_pos;
}
