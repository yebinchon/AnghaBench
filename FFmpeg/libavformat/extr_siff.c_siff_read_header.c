
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_6__ {int * priv_data; int * pb; } ;
typedef int SIFFContext ;
typedef int AVIOContext ;
typedef TYPE_1__ AVFormatContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 scalar_t__ MKTAG (char,char,char,char) ;
 scalar_t__ TAG_SIFF ;
 scalar_t__ TAG_SOUN ;
 scalar_t__ TAG_VBV1 ;
 int av_log (TYPE_1__*,int ,char*) ;
 scalar_t__ avio_rl32 (int *) ;
 int avio_skip (int *,int) ;
 int siff_parse_soun (TYPE_1__*,int *,int *) ;
 int siff_parse_vbv1 (TYPE_1__*,int *,int *) ;

__attribute__((used)) static int siff_read_header(AVFormatContext *s)
{
    AVIOContext *pb = s->pb;
    SIFFContext *c = s->priv_data;
    uint32_t tag;
    int ret;

    if (avio_rl32(pb) != TAG_SIFF)
        return AVERROR_INVALIDDATA;
    avio_skip(pb, 4);
    tag = avio_rl32(pb);

    if (tag != TAG_VBV1 && tag != TAG_SOUN) {
        av_log(s, AV_LOG_ERROR, "Not a VBV file\n");
        return AVERROR_INVALIDDATA;
    }

    if (tag == TAG_VBV1 && (ret = siff_parse_vbv1(s, c, pb)) < 0)
        return ret;
    if (tag == TAG_SOUN && (ret = siff_parse_soun(s, c, pb)) < 0)
        return ret;
    if (avio_rl32(pb) != MKTAG('B', 'O', 'D', 'Y')) {
        av_log(s, AV_LOG_ERROR, "'BODY' chunk is missing\n");
        return AVERROR_INVALIDDATA;
    }
    avio_skip(pb, 4);

    return 0;
}
