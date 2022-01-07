
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64_t ;
typedef int ff_asf_guid ;
struct TYPE_5__ {int last_chunk_pos; } ;
typedef TYPE_1__ WtvContext ;
struct TYPE_6__ {int * pb; TYPE_1__* priv_data; } ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int avio_wl64 (int *,int ) ;
 int write_chunk_header (TYPE_2__*,int const*,int ,int) ;

__attribute__((used)) static void write_chunk_header2(AVFormatContext *s, const ff_asf_guid *guid, int stream_id)
{
    WtvContext *wctx = s->priv_data;
    AVIOContext *pb = s->pb;

    int64_t last_chunk_pos = wctx->last_chunk_pos;
    write_chunk_header(s, guid, 0, stream_id);
    avio_wl64(pb, last_chunk_pos);
}
