
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef char uint8_t ;
struct TYPE_8__ {int extradata; } ;
struct TYPE_7__ {TYPE_5__* codecpar; } ;
struct TYPE_6__ {char subpkts_per_block; int block_size; int block_type; } ;
typedef TYPE_1__ PayloadContext ;
typedef TYPE_2__ AVStream ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_RB16 (char const*) ;
 int AV_RB32 (char const*) ;
 int AV_WB32 (int ,int) ;
 int EAGAIN ;
 int ENOMEM ;
 int av_freep (int *) ;
 int ff_alloc_extradata (TYPE_5__*,int) ;
 int memcpy (int ,char const*,unsigned int) ;

__attribute__((used)) static int qdm2_parse_config(PayloadContext *qdm, AVStream *st,
                             const uint8_t *buf, const uint8_t *end)
{
    const uint8_t *p = buf;

    while (end - p >= 2) {
        unsigned int item_len = p[0], config_item = p[1];

        if (item_len < 2 || end - p < item_len || config_item > 4)
            return AVERROR_INVALIDDATA;

        switch (config_item) {
            case 0:
                return p - buf + item_len;
            case 1:

                break;
            case 2:
                if (item_len < 3)
                    return AVERROR_INVALIDDATA;
                qdm->subpkts_per_block = p[2];
                break;
            case 3:
                if (item_len < 4)
                    return AVERROR_INVALIDDATA;
                qdm->block_type = AV_RB16(p + 2);
                break;
            case 4:
                if (item_len < 30)
                    return AVERROR_INVALIDDATA;
                av_freep(&st->codecpar->extradata);
                if (ff_alloc_extradata(st->codecpar, 26 + item_len)) {
                    return AVERROR(ENOMEM);
                }
                AV_WB32(st->codecpar->extradata, 12);
                memcpy(st->codecpar->extradata + 4, "frma", 4);
                memcpy(st->codecpar->extradata + 8, "QDM2", 4);
                AV_WB32(st->codecpar->extradata + 12, 6 + item_len);
                memcpy(st->codecpar->extradata + 16, "QDCA", 4);
                memcpy(st->codecpar->extradata + 20, p + 2, item_len - 2);
                AV_WB32(st->codecpar->extradata + 18 + item_len, 8);
                AV_WB32(st->codecpar->extradata + 22 + item_len, 0);

                qdm->block_size = AV_RB32(p + 26);
                break;
        }

        p += item_len;
    }

    return AVERROR(EAGAIN);
}
