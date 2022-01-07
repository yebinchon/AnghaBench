
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int * pb; TYPE_2__* priv_data; } ;
struct TYPE_11__ {int size; int flags; } ;
struct TYPE_10__ {int page; int record; int page_table_offset; TYPE_1__* pt; } ;
struct TYPE_9__ {int nb_records; scalar_t__ base_record; } ;
typedef TYPE_1__ Page ;
typedef TYPE_2__ AnmDemuxContext ;
typedef TYPE_3__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR (int ) ;
 int AV_PKT_FLAG_KEY ;
 int EIO ;
 int MAX_PAGES ;
 int SEEK_SET ;
 int av_get_packet (int *,TYPE_3__*,int) ;
 scalar_t__ avio_feof (int *) ;
 int avio_rl16 (int *) ;
 int avio_seek (int *,int,int ) ;
 int avio_skip (int *,int) ;
 int avio_tell (int *) ;
 int find_record (TYPE_2__*,scalar_t__) ;

__attribute__((used)) static int read_packet(AVFormatContext *s,
                       AVPacket *pkt)
{
    AnmDemuxContext *anm = s->priv_data;
    AVIOContext *pb = s->pb;
    Page *p;
    int tmp, record_size;

    if (avio_feof(s->pb))
        return AVERROR(EIO);

    if (anm->page < 0)
        return anm->page;

repeat:
    p = &anm->pt[anm->page];


    if (anm->record < 0) {
        avio_seek(pb, anm->page_table_offset + MAX_PAGES*6 + (anm->page<<16), SEEK_SET);
        avio_skip(pb, 8 + 2*p->nb_records);
        anm->record = 0;
    }



    if (anm->record >= p->nb_records) {
        anm->page = find_record(anm, p->base_record + p->nb_records);
        if (anm->page < 0)
            return anm->page;
        anm->record = -1;
        goto repeat;
    }


    tmp = avio_tell(pb);
    avio_seek(pb, anm->page_table_offset + MAX_PAGES*6 + (anm->page<<16) +
              8 + anm->record * 2, SEEK_SET);
    record_size = avio_rl16(pb);
    avio_seek(pb, tmp, SEEK_SET);


    pkt->size = av_get_packet(s->pb, pkt, record_size);
    if (pkt->size < 0)
        return pkt->size;
    if (p->base_record + anm->record == 0)
        pkt->flags |= AV_PKT_FLAG_KEY;

    anm->record++;
    return 0;
}
