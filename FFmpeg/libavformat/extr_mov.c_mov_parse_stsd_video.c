
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ int64_t ;
typedef int codec_name ;
struct TYPE_8__ {TYPE_1__* codecpar; int metadata; } ;
struct TYPE_7__ {int has_palette; int palette; } ;
struct TYPE_6__ {int width; int height; scalar_t__ codec_tag; int bits_per_coded_sample; int codec_id; } ;
typedef TYPE_2__ MOVStreamContext ;
typedef int MOVContext ;
typedef TYPE_3__ AVStream ;
typedef int AVIOContext ;


 int AV_CODEC_ID_FLV1 ;
 scalar_t__ MKTAG (char,char,char,char) ;
 int SEEK_SET ;
 int av_dict_set (int *,char*,scalar_t__*,int ) ;
 unsigned int avio_r8 (int *) ;
 void* avio_rb16 (int *) ;
 int avio_rb32 (int *) ;
 int avio_seek (int *,scalar_t__,int ) ;
 int avio_skip (int *,int) ;
 scalar_t__ avio_tell (int *) ;
 scalar_t__ ff_get_qtpalette (int ,int *,int ) ;
 int mov_read_mac_string (int *,int *,unsigned int,scalar_t__*,int) ;
 int strncmp (scalar_t__*,char*,int) ;

__attribute__((used)) static void mov_parse_stsd_video(MOVContext *c, AVIOContext *pb,
                                 AVStream *st, MOVStreamContext *sc)
{
    uint8_t codec_name[32] = { 0 };
    int64_t stsd_start;
    unsigned int len;



    stsd_start = avio_tell(pb) - 16;

    avio_rb16(pb);
    avio_rb16(pb);
    avio_rb32(pb);
    avio_rb32(pb);
    avio_rb32(pb);

    st->codecpar->width = avio_rb16(pb);
    st->codecpar->height = avio_rb16(pb);

    avio_rb32(pb);
    avio_rb32(pb);
    avio_rb32(pb);
    avio_rb16(pb);

    len = avio_r8(pb);
    if (len > 31)
        len = 31;
    mov_read_mac_string(c, pb, len, codec_name, sizeof(codec_name));
    if (len < 31)
        avio_skip(pb, 31 - len);

    if (codec_name[0])
        av_dict_set(&st->metadata, "encoder", codec_name, 0);


    if (!strncmp(codec_name, "Planar Y'CbCr 8-bit 4:2:0", 25)) {
        st->codecpar->codec_tag = MKTAG('I', '4', '2', '0');
        st->codecpar->width &= ~1;
        st->codecpar->height &= ~1;
    }

    if (st->codecpar->codec_tag == MKTAG('H','2','6','3') &&
        !strncmp(codec_name, "Sorenson H263", 13))
        st->codecpar->codec_id = AV_CODEC_ID_FLV1;

    st->codecpar->bits_per_coded_sample = avio_rb16(pb);

    avio_seek(pb, stsd_start, SEEK_SET);

    if (ff_get_qtpalette(st->codecpar->codec_id, pb, sc->palette)) {
        st->codecpar->bits_per_coded_sample &= 0x1F;
        sc->has_palette = 1;
    }
}
