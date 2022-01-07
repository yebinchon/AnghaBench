
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_6__ {char* value; } ;
struct TYPE_5__ {int flags; int metadata; } ;
typedef int AVIOContext ;
typedef TYPE_1__ AVFormatContext ;
typedef TYPE_2__ AVDictionaryEntry ;


 int AVFMT_FLAG_BITEXACT ;
 char* LIBAVCODEC_IDENT ;
 TYPE_2__* av_dict_get (int ,char*,int *,int ) ;
 int avio_tell (int *) ;
 int avio_wb16 (int *,int) ;
 int avio_wb32 (int *,int) ;
 int ffio_wfourcc (int *,char*) ;
 int language_code (char*) ;
 int mov_write_psp_udta_tag (int *,char*,char*,int) ;
 int update_size (int *,int ) ;

__attribute__((used)) static int mov_write_uuidusmt_tag(AVIOContext *pb, AVFormatContext *s)
{
    AVDictionaryEntry *title = av_dict_get(s->metadata, "title", ((void*)0), 0);
    int64_t pos, pos2;

    if (title) {
        pos = avio_tell(pb);
        avio_wb32(pb, 0);
        ffio_wfourcc(pb, "uuid");
        ffio_wfourcc(pb, "USMT");
        avio_wb32(pb, 0x21d24fce);
        avio_wb32(pb, 0xbb88695c);
        avio_wb32(pb, 0xfac9c740);

        pos2 = avio_tell(pb);
        avio_wb32(pb, 0);
        ffio_wfourcc(pb, "MTDT");
        avio_wb16(pb, 4);


        avio_wb16(pb, 0x0C);
        avio_wb32(pb, 0x0B);
        avio_wb16(pb, language_code("und"));
        avio_wb16(pb, 0x0);
        avio_wb16(pb, 0x021C);

        if (!(s->flags & AVFMT_FLAG_BITEXACT))
            mov_write_psp_udta_tag(pb, LIBAVCODEC_IDENT, "eng", 0x04);
        mov_write_psp_udta_tag(pb, title->value, "eng", 0x01);
        mov_write_psp_udta_tag(pb, "2006/04/01 11:11:11", "und", 0x03);

        update_size(pb, pos2);
        return update_size(pb, pos);
    }

    return 0;
}
