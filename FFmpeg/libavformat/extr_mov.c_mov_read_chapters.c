
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
typedef scalar_t__ int64_t ;
struct TYPE_18__ {int nb_streams; TYPE_4__** streams; TYPE_3__* priv_data; } ;
struct TYPE_17__ {scalar_t__ pos; int size; scalar_t__ timestamp; } ;
struct TYPE_16__ {int flags; int stream_index; } ;
struct TYPE_15__ {int id; int disposition; int nb_index_entries; scalar_t__ duration; int time_base; TYPE_6__* index_entries; int discard; TYPE_1__* codecpar; TYPE_5__ attached_pic; int index; TYPE_2__* priv_data; } ;
struct TYPE_14__ {int nb_chapter_tracks; int* chapter_tracks; } ;
struct TYPE_13__ {int pb; } ;
struct TYPE_12__ {scalar_t__ codec_type; int codec_id; } ;
typedef TYPE_2__ MOVStreamContext ;
typedef TYPE_3__ MOVContext ;
typedef TYPE_4__ AVStream ;
typedef TYPE_5__ AVPacket ;
typedef TYPE_6__ AVIndexEntry ;
typedef TYPE_7__ AVFormatContext ;


 int AVDISCARD_ALL ;
 scalar_t__ AVMEDIA_TYPE_DATA ;
 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 int AV_CODEC_ID_BIN_DATA ;
 int AV_DISPOSITION_ATTACHED_PIC ;
 int AV_DISPOSITION_TIMED_THUMBNAILS ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 scalar_t__ AV_NOPTS_VALUE ;
 int AV_PKT_FLAG_KEY ;
 int AV_WB16 (scalar_t__*,int) ;
 int INT_MAX ;
 int SEEK_SET ;
 int av_freep (scalar_t__**) ;
 scalar_t__ av_get_packet (int ,TYPE_5__*,int) ;
 int av_log (TYPE_7__*,int ,char*,...) ;
 scalar_t__* av_mallocz (int) ;
 int avio_get_str (int ,int ,scalar_t__*,int) ;
 int avio_get_str16be (int ,int,scalar_t__*,int) ;
 int avio_get_str16le (int ,int,scalar_t__*,int) ;
 int avio_rb16 (int ) ;
 scalar_t__ avio_seek (int ,scalar_t__,int ) ;
 scalar_t__ avio_tell (int ) ;
 int avpriv_new_chapter (TYPE_7__*,int,int ,scalar_t__,scalar_t__,scalar_t__*) ;

__attribute__((used)) static void mov_read_chapters(AVFormatContext *s)
{
    MOVContext *mov = s->priv_data;
    AVStream *st;
    MOVStreamContext *sc;
    int64_t cur_pos;
    int i, j;
    int chapter_track;

    for (j = 0; j < mov->nb_chapter_tracks; j++) {
        chapter_track = mov->chapter_tracks[j];
        st = ((void*)0);
        for (i = 0; i < s->nb_streams; i++)
            if (s->streams[i]->id == chapter_track) {
                st = s->streams[i];
                break;
            }
        if (!st) {
            av_log(s, AV_LOG_ERROR, "Referenced QT chapter track not found\n");
            continue;
        }

        sc = st->priv_data;
        cur_pos = avio_tell(sc->pb);

        if (st->codecpar->codec_type == AVMEDIA_TYPE_VIDEO) {
            st->disposition |= AV_DISPOSITION_ATTACHED_PIC | AV_DISPOSITION_TIMED_THUMBNAILS;
            if (st->nb_index_entries) {

                AVPacket pkt;
                AVIndexEntry *sample = &st->index_entries[0];
                if (avio_seek(sc->pb, sample->pos, SEEK_SET) != sample->pos) {
                    av_log(s, AV_LOG_ERROR, "Failed to retrieve first frame\n");
                    goto finish;
                }

                if (av_get_packet(sc->pb, &pkt, sample->size) < 0)
                    goto finish;

                st->attached_pic = pkt;
                st->attached_pic.stream_index = st->index;
                st->attached_pic.flags |= AV_PKT_FLAG_KEY;
            }
        } else {
            st->codecpar->codec_type = AVMEDIA_TYPE_DATA;
            st->codecpar->codec_id = AV_CODEC_ID_BIN_DATA;
            st->discard = AVDISCARD_ALL;
            for (i = 0; i < st->nb_index_entries; i++) {
                AVIndexEntry *sample = &st->index_entries[i];
                int64_t end = i+1 < st->nb_index_entries ? st->index_entries[i+1].timestamp : st->duration;
                uint8_t *title;
                uint16_t ch;
                int len, title_len;

                if (end < sample->timestamp) {
                    av_log(s, AV_LOG_WARNING, "ignoring stream duration which is shorter than chapters\n");
                    end = AV_NOPTS_VALUE;
                }

                if (avio_seek(sc->pb, sample->pos, SEEK_SET) != sample->pos) {
                    av_log(s, AV_LOG_ERROR, "Chapter %d not found in file\n", i);
                    goto finish;
                }


                len = avio_rb16(sc->pb);
                if (len > sample->size-2)
                    continue;
                title_len = 2*len + 1;
                if (!(title = av_mallocz(title_len)))
                    goto finish;




                if (!len) {
                    title[0] = 0;
                } else {
                    ch = avio_rb16(sc->pb);
                    if (ch == 0xfeff)
                        avio_get_str16be(sc->pb, len, title, title_len);
                    else if (ch == 0xfffe)
                        avio_get_str16le(sc->pb, len, title, title_len);
                    else {
                        AV_WB16(title, ch);
                        if (len == 1 || len == 2)
                            title[len] = 0;
                        else
                            avio_get_str(sc->pb, INT_MAX, title + 2, len - 1);
                    }
                }

                avpriv_new_chapter(s, i, st->time_base, sample->timestamp, end, title);
                av_freep(&title);
            }
        }
finish:
        avio_seek(sc->pb, cur_pos, SEEK_SET);
    }
}
