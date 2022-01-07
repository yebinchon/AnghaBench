
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_6__ {int last_chunk_pos; int serial; int nb_sp_pairs; int sp_pairs; int last_timestamp_pos; int first_index_pos; } ;
typedef TYPE_1__ WtvContext ;
struct TYPE_7__ {TYPE_1__* priv_data; int * pb; } ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int add_serial_pair (int *,int *,int ,int ) ;
 int avio_wl64 (int *,int ) ;
 int ff_sync_guid ;
 int finish_chunk (TYPE_2__*) ;
 int write_chunk_header (TYPE_2__*,int *,int,int ) ;

__attribute__((used)) static void write_sync(AVFormatContext *s)
{
    AVIOContext *pb = s->pb;
    WtvContext *wctx = s->priv_data;
    int64_t last_chunk_pos = wctx->last_chunk_pos;

    write_chunk_header(s, &ff_sync_guid, 0x18, 0);
    avio_wl64(pb, wctx->first_index_pos);
    avio_wl64(pb, wctx->last_timestamp_pos);
    avio_wl64(pb, 0);

    finish_chunk(s);
    add_serial_pair(&wctx->sp_pairs, &wctx->nb_sp_pairs, wctx->serial, wctx->last_chunk_pos);

    wctx->last_chunk_pos = last_chunk_pos;
}
