
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_18__ {int nb_streams; TYPE_2__** streams; TYPE_3__* pb; TYPE_1__* priv_data; } ;
struct TYPE_17__ {int seekable; } ;
struct TYPE_16__ {int disposition; } ;
struct TYPE_15__ {int tracks_bc; int tracks_pos; int is_live; int seekhead; } ;
typedef TYPE_1__ MatroskaMuxContext ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVIOContext ;
typedef TYPE_4__ AVFormatContext ;


 int AVIO_SEEKABLE_NORMAL ;
 int AV_DISPOSITION_DEFAULT ;
 int MATROSKA_ID_TRACKS ;
 int avio_tell (TYPE_3__*) ;
 int end_ebml_master_crc32 (TYPE_3__*,int *,TYPE_1__*) ;
 int end_ebml_master_crc32_preliminary (TYPE_3__*,int *,TYPE_1__*,int *) ;
 int mkv_add_seekhead_entry (int ,int ,int ) ;
 int mkv_write_track (TYPE_4__*,TYPE_1__*,int,int ,int) ;
 int start_ebml_master_crc32 (TYPE_3__*,int *,TYPE_1__*,int ) ;

__attribute__((used)) static int mkv_write_tracks(AVFormatContext *s)
{
    MatroskaMuxContext *mkv = s->priv_data;
    AVIOContext *pb = s->pb;
    int i, ret, default_stream_exists = 0;

    ret = mkv_add_seekhead_entry(mkv->seekhead, MATROSKA_ID_TRACKS, avio_tell(pb));
    if (ret < 0)
        return ret;

    ret = start_ebml_master_crc32(pb, &mkv->tracks_bc, mkv, MATROSKA_ID_TRACKS);
    if (ret < 0)
        return ret;

    for (i = 0; i < s->nb_streams; i++) {
        AVStream *st = s->streams[i];
        default_stream_exists |= st->disposition & AV_DISPOSITION_DEFAULT;
    }
    for (i = 0; i < s->nb_streams; i++) {
        ret = mkv_write_track(s, mkv, i, mkv->tracks_bc, default_stream_exists);
        if (ret < 0)
            return ret;
    }

    if ((pb->seekable & AVIO_SEEKABLE_NORMAL) && !mkv->is_live)
        end_ebml_master_crc32_preliminary(pb, &mkv->tracks_bc, mkv, &mkv->tracks_pos);
    else
        end_ebml_master_crc32(pb, &mkv->tracks_bc, mkv);

    return 0;
}
