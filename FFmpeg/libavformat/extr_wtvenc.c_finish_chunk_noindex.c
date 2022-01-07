
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_4__ {int last_chunk_pos; int timeline_start_pos; int serial; } ;
typedef TYPE_1__ WtvContext ;
struct TYPE_5__ {int * pb; TYPE_1__* priv_data; } ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int SEEK_CUR ;
 scalar_t__ WTV_PAD8 (int) ;
 int avio_seek (int *,int,int ) ;
 int avio_tell (int *) ;
 int avio_wl32 (int *,int) ;
 int write_pad (int *,scalar_t__) ;

__attribute__((used)) static void finish_chunk_noindex(AVFormatContext *s)
{
    WtvContext *wctx = s->priv_data;
    AVIOContext *pb = s->pb;


    int64_t chunk_len = avio_tell(pb) - (wctx->last_chunk_pos + wctx->timeline_start_pos);
    avio_seek(pb, -(chunk_len - 16), SEEK_CUR);
    avio_wl32(pb, chunk_len);
    avio_seek(pb, chunk_len - (16 + 4), SEEK_CUR);

    write_pad(pb, WTV_PAD8(chunk_len) - chunk_len);
    wctx->serial++;
}
