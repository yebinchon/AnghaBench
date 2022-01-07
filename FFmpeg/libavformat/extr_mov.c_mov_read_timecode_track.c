
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
typedef int int64_t ;
struct TYPE_12__ {int pb; } ;
struct TYPE_11__ {TYPE_1__* index_entries; int nb_index_entries; TYPE_2__* priv_data; } ;
struct TYPE_10__ {int tmcd_flags; int pb; } ;
struct TYPE_9__ {int pos; } ;
typedef TYPE_2__ MOVStreamContext ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVFormatContext ;


 int AV_TIMECODE_FLAG_24HOURSMAX ;
 int AV_TIMECODE_FLAG_ALLOWNEGATIVE ;
 int AV_TIMECODE_FLAG_DROPFRAME ;
 int SEEK_SET ;
 int avio_rb32 (int ) ;
 int avio_seek (int ,int ,int ) ;
 int avio_tell (int ) ;
 int parse_timecode_in_framenum_format (TYPE_4__*,TYPE_3__*,int ,int) ;

__attribute__((used)) static int mov_read_timecode_track(AVFormatContext *s, AVStream *st)
{
    MOVStreamContext *sc = st->priv_data;
    int flags = 0;
    int64_t cur_pos = avio_tell(sc->pb);
    uint32_t value;

    if (!st->nb_index_entries)
        return -1;

    avio_seek(sc->pb, st->index_entries->pos, SEEK_SET);
    value = avio_rb32(s->pb);

    if (sc->tmcd_flags & 0x0001) flags |= AV_TIMECODE_FLAG_DROPFRAME;
    if (sc->tmcd_flags & 0x0002) flags |= AV_TIMECODE_FLAG_24HOURSMAX;
    if (sc->tmcd_flags & 0x0004) flags |= AV_TIMECODE_FLAG_ALLOWNEGATIVE;






    parse_timecode_in_framenum_format(s, st, value, flags);

    avio_seek(sc->pb, cur_pos, SEEK_SET);
    return 0;
}
