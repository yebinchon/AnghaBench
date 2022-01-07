
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_16__ {int id3v2_version; TYPE_2__* pict_list; } ;
struct TYPE_15__ {int metadata_header_padding; int metadata; int * pb; } ;
struct TYPE_14__ {struct TYPE_14__* next; int pkt; } ;
struct TYPE_13__ {int member_0; } ;
typedef TYPE_1__ ID3v2EncContext ;
typedef TYPE_2__ AVPacketList ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;
typedef TYPE_4__ AIFFOutputContext ;


 int ID3v2_DEFAULT_MAGIC ;
 int MKTAG (char,char,char,char) ;
 int SEEK_SET ;
 int avio_seek (int *,int,int ) ;
 int avio_tell (int *) ;
 int avio_w8 (int *,int ) ;
 int avio_wb32 (int *,int) ;
 int avio_wl32 (int *,int ) ;
 int ff_id3v2_finish (TYPE_1__*,int *,int ) ;
 int ff_id3v2_start (TYPE_1__*,int *,int ,int ) ;
 int ff_id3v2_write_apic (TYPE_3__*,TYPE_1__*,int *) ;
 int ff_id3v2_write_metadata (TYPE_3__*,TYPE_1__*) ;

__attribute__((used)) static int put_id3v2_tags(AVFormatContext *s, AIFFOutputContext *aiff)
{
    int ret;
    uint64_t pos, end, size;
    ID3v2EncContext id3v2 = { 0 };
    AVIOContext *pb = s->pb;
    AVPacketList *pict_list = aiff->pict_list;

    if (!s->metadata && !aiff->pict_list)
        return 0;

    avio_wl32(pb, MKTAG('I', 'D', '3', ' '));
    avio_wb32(pb, 0);
    pos = avio_tell(pb);

    ff_id3v2_start(&id3v2, pb, aiff->id3v2_version, ID3v2_DEFAULT_MAGIC);
    ff_id3v2_write_metadata(s, &id3v2);
    while (pict_list) {
        if ((ret = ff_id3v2_write_apic(s, &id3v2, &pict_list->pkt)) < 0)
            return ret;
        pict_list = pict_list->next;
    }
    ff_id3v2_finish(&id3v2, pb, s->metadata_header_padding);

    end = avio_tell(pb);
    size = end - pos;


    avio_seek(pb, pos - 4, SEEK_SET);
    avio_wb32(pb, size);
    avio_seek(pb, end, SEEK_SET);

    if (size & 1)
        avio_w8(pb, 0);

    return 0;
}
