
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int root ;
typedef scalar_t__ int64_t ;
struct TYPE_11__ {int nb_index_entries; TYPE_3__* index_entries; int index_entries_allocated_size; void* pb; int last_valid_pts; int pts; int epoch; } ;
typedef TYPE_1__ WtvContext ;
struct TYPE_14__ {void* pb; TYPE_2__** streams; scalar_t__ nb_streams; int ctx_flags; TYPE_1__* priv_data; } ;
struct TYPE_13__ {scalar_t__ size; int timestamp; scalar_t__ pos; } ;
struct TYPE_12__ {int duration; } ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVIndexEntry ;
typedef int AVIOContext ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR_INVALIDDATA ;
 int AVFMTCTX_NOHEADER ;
 int AVINDEX_KEYFRAME ;
 int AV_LOG_ERROR ;
 int AV_NOPTS_VALUE ;
 int SEEK_CUR ;
 int SEEK_SET ;
 int SEEK_TO_DATA ;
 int WTV_SECTOR_SIZE ;
 int av_log (TYPE_4__*,int ,char*) ;
 scalar_t__ avio_feof (int *) ;
 int avio_read (void*,int *,int) ;
 void* avio_rl32 (void*) ;
 scalar_t__ avio_rl64 (int *) ;
 int avio_seek (void*,scalar_t__,int ) ;
 int avio_skip (void*,int) ;
 scalar_t__ avio_tell (void*) ;
 int ff_add_index_entry (TYPE_3__**,int*,int *,int ,scalar_t__,scalar_t__,int ,int ) ;
 int ff_table_0_entries_legacy_attrib_le16 ;
 int ff_table_0_entries_time_le16 ;
 int ff_timeline_le16 ;
 int ff_timeline_table_0_entries_Events_le16 ;
 scalar_t__ parse_chunks (TYPE_4__*,int ,int ,int ) ;
 int parse_legacy_attrib (TYPE_4__*,int *) ;
 scalar_t__ seek_by_sector (void*,unsigned int,int ) ;
 int wtvfile_close (int *) ;
 void* wtvfile_open (TYPE_4__*,int *,int,int ) ;

__attribute__((used)) static int read_header(AVFormatContext *s)
{
    WtvContext *wtv = s->priv_data;
    unsigned root_sector;
    int root_size;
    uint8_t root[WTV_SECTOR_SIZE];
    AVIOContext *pb;
    int64_t timeline_pos;
    int64_t ret;

    wtv->epoch =
    wtv->pts =
    wtv->last_valid_pts = AV_NOPTS_VALUE;


    avio_skip(s->pb, 0x30);
    root_size = avio_rl32(s->pb);
    if (root_size > sizeof(root)) {
        av_log(s, AV_LOG_ERROR, "root directory size exceeds sector size\n");
        return AVERROR_INVALIDDATA;
    }
    avio_skip(s->pb, 4);
    root_sector = avio_rl32(s->pb);

    ret = seek_by_sector(s->pb, root_sector, 0);
    if (ret < 0)
        return ret;
    root_size = avio_read(s->pb, root, root_size);
    if (root_size < 0)
        return AVERROR_INVALIDDATA;


    wtv->pb = wtvfile_open(s, root, root_size, ff_timeline_le16);
    if (!wtv->pb) {
        av_log(s, AV_LOG_ERROR, "timeline data missing\n");
        return AVERROR_INVALIDDATA;
    }

    ret = parse_chunks(s, SEEK_TO_DATA, 0, 0);
    if (ret < 0)
        return ret;
    avio_seek(wtv->pb, -32, SEEK_CUR);

    timeline_pos = avio_tell(s->pb);


    pb = wtvfile_open(s, root, root_size, ff_table_0_entries_legacy_attrib_le16);
    if (pb) {
        parse_legacy_attrib(s, pb);
        wtvfile_close(pb);
    }

    s->ctx_flags |= AVFMTCTX_NOHEADER;


    if (s->nb_streams) {
        AVStream *st = s->streams[0];
        pb = wtvfile_open(s, root, root_size, ff_table_0_entries_time_le16);
        if (pb) {
            while(1) {
                uint64_t timestamp = avio_rl64(pb);
                uint64_t frame_nb = avio_rl64(pb);
                if (avio_feof(pb))
                    break;
                ff_add_index_entry(&wtv->index_entries, &wtv->nb_index_entries, &wtv->index_entries_allocated_size,
                                   0, timestamp, frame_nb, 0, AVINDEX_KEYFRAME);
            }
            wtvfile_close(pb);

            if (wtv->nb_index_entries) {
                pb = wtvfile_open(s, root, root_size, ff_timeline_table_0_entries_Events_le16);
                if (pb) {
                    AVIndexEntry *e = wtv->index_entries;
                    AVIndexEntry *e_end = wtv->index_entries + wtv->nb_index_entries - 1;
                    uint64_t last_position = 0;
                    while (1) {
                        uint64_t frame_nb = avio_rl64(pb);
                        uint64_t position = avio_rl64(pb);
                        while (e <= e_end && frame_nb > e->size) {
                            e->pos = last_position;
                            e++;
                        }
                        if (avio_feof(pb))
                            break;
                        last_position = position;
                    }
                    e_end->pos = last_position;
                    wtvfile_close(pb);
                    st->duration = e_end->timestamp;
                }
            }
        }
    }

    avio_seek(s->pb, timeline_pos, SEEK_SET);
    return 0;
}
