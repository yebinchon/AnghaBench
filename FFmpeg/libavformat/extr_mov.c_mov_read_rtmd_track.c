
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_10__ {int pb; } ;
struct TYPE_9__ {int metadata; TYPE_1__* index_entries; int nb_index_entries; TYPE_2__* priv_data; } ;
struct TYPE_8__ {int pb; } ;
struct TYPE_7__ {int pos; } ;
typedef TYPE_2__ MOVStreamContext ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVFormatContext ;


 int AV_TIMECODE_STR_SIZE ;
 int SEEK_SET ;
 int av_dict_set (int *,char*,char*,int ) ;
 int avio_r8 (int ) ;
 int avio_seek (int ,int ,int ) ;
 int avio_skip (int ,int) ;
 int avio_tell (int ) ;
 int snprintf (char*,int,char*,int,int,int,char,int) ;

__attribute__((used)) static int mov_read_rtmd_track(AVFormatContext *s, AVStream *st)
{
    MOVStreamContext *sc = st->priv_data;
    char buf[AV_TIMECODE_STR_SIZE];
    int64_t cur_pos = avio_tell(sc->pb);
    int hh, mm, ss, ff, drop;

    if (!st->nb_index_entries)
        return -1;

    avio_seek(sc->pb, st->index_entries->pos, SEEK_SET);
    avio_skip(s->pb, 13);
    hh = avio_r8(s->pb);
    mm = avio_r8(s->pb);
    ss = avio_r8(s->pb);
    drop = avio_r8(s->pb);
    ff = avio_r8(s->pb);
    snprintf(buf, AV_TIMECODE_STR_SIZE, "%02d:%02d:%02d%c%02d",
             hh, mm, ss, drop ? ';' : ':', ff);
    av_dict_set(&st->metadata, "timecode", buf, 0);

    avio_seek(sc->pb, cur_pos, SEEK_SET);
    return 0;
}
