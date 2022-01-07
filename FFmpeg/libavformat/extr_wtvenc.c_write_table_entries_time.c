
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int nb_st_pairs; int last_serial; int last_pts; TYPE_1__* st_pairs; } ;
typedef TYPE_2__ WtvContext ;
struct TYPE_7__ {TYPE_2__* priv_data; int * pb; } ;
struct TYPE_5__ {int serial; int value; } ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;


 int avio_wl64 (int *,int ) ;

__attribute__((used)) static void write_table_entries_time(AVFormatContext *s)
{
    AVIOContext *pb = s->pb;
    WtvContext *wctx = s->priv_data;
    int i;
    for (i = 0; i < wctx->nb_st_pairs; i++) {
        avio_wl64(pb, wctx->st_pairs[i].value);
        avio_wl64(pb, wctx->st_pairs[i].serial);
    }
    avio_wl64(pb, wctx->last_pts);
    avio_wl64(pb, wctx->last_serial);
}
