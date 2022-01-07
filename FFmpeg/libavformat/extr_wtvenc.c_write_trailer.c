
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_10__ {int timeline_start_pos; int thumbnail; int st_pairs; int sp_pairs; } ;
typedef TYPE_1__ WtvContext ;
struct TYPE_11__ {int * pb; TYPE_1__* priv_data; } ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int SEEK_CUR ;
 int SEEK_SET ;
 int WTV_SECTOR_BITS ;
 int WTV_TABLE_0_ENTRIES_LEGACY_ATTRIB ;
 int WTV_TABLE_0_ENTRIES_TIME ;
 int WTV_TABLE_0_REDIRECTOR_LEGACY_ATTRIB ;
 int WTV_TIMELINE ;
 int WTV_TIMELINE_TABLE_0_ENTRIES_EVENTS ;
 int av_free (int ) ;
 int av_packet_unref (int *) ;
 int avio_flush (int *) ;
 int avio_seek (int *,int,int ) ;
 int avio_tell (int *) ;
 int avio_wl32 (int *,int) ;
 scalar_t__ finish_file (TYPE_2__*,int ,int) ;
 int write_root_table (TYPE_2__*,int) ;
 int write_table_entries_attrib (TYPE_2__*) ;
 int write_table_entries_events (TYPE_2__*) ;
 int write_table_entries_time (TYPE_2__*) ;
 int write_table_redirector_legacy_attrib (TYPE_2__*) ;

__attribute__((used)) static int write_trailer(AVFormatContext *s)
{
    WtvContext *wctx = s->priv_data;
    AVIOContext *pb = s->pb;
    int root_size;
    int64_t sector_pos;
    int64_t start_pos, file_end_pos;

    if (finish_file(s, WTV_TIMELINE, wctx->timeline_start_pos) < 0)
        return -1;

    start_pos = avio_tell(pb);
    write_table_entries_events(s);
    if (finish_file(s, WTV_TIMELINE_TABLE_0_ENTRIES_EVENTS, start_pos) < 0)
        return -1;

    start_pos = avio_tell(pb);
    write_table_entries_attrib(s);
    if (finish_file(s, WTV_TABLE_0_ENTRIES_LEGACY_ATTRIB, start_pos) < 0)
        return -1;

    start_pos = avio_tell(pb);
    write_table_redirector_legacy_attrib(s);
    if (finish_file(s, WTV_TABLE_0_REDIRECTOR_LEGACY_ATTRIB, start_pos) < 0)
        return -1;

    start_pos = avio_tell(pb);
    write_table_entries_time(s);
    if (finish_file(s, WTV_TABLE_0_ENTRIES_TIME, start_pos) < 0)
        return -1;


    sector_pos = avio_tell(pb);
    root_size = write_root_table(s, sector_pos);

    file_end_pos = avio_tell(pb);

    avio_seek(pb, 0x30, SEEK_SET);
    avio_wl32(pb, root_size);
    avio_seek(pb, 4, SEEK_CUR);
    avio_wl32(pb, sector_pos >> WTV_SECTOR_BITS);
    avio_seek(pb, 0x5c, SEEK_SET);
    avio_wl32(pb, file_end_pos >> WTV_SECTOR_BITS);

    avio_flush(pb);

    av_free(wctx->sp_pairs);
    av_free(wctx->st_pairs);
    av_packet_unref(&wctx->thumbnail);
    return 0;
}
