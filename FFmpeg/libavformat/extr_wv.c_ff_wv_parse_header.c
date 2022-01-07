
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int blocksize; int flags; int initial; int final; scalar_t__ crc; scalar_t__ samples; scalar_t__ block_idx; scalar_t__ total_samples; int version; } ;
typedef TYPE_1__ WvHeader ;


 int AVERROR_INVALIDDATA ;
 int AV_RL16 (int const*) ;
 scalar_t__ AV_RL32 (int const*) ;
 scalar_t__ MKTAG (char,char,char,char) ;
 int WV_BLOCK_LIMIT ;
 int WV_FLAG_FINAL_BLOCK ;
 int WV_FLAG_INITIAL_BLOCK ;
 int memset (TYPE_1__*,int ,int) ;

int ff_wv_parse_header(WvHeader *wv, const uint8_t *data)
{
    memset(wv, 0, sizeof(*wv));

    if (AV_RL32(data) != MKTAG('w', 'v', 'p', 'k'))
        return AVERROR_INVALIDDATA;

    wv->blocksize = AV_RL32(data + 4);
    if (wv->blocksize < 24 || wv->blocksize > WV_BLOCK_LIMIT)
        return AVERROR_INVALIDDATA;
    wv->blocksize -= 24;

    wv->version = AV_RL16(data + 8);
    wv->total_samples = AV_RL32(data + 12);
    wv->block_idx = AV_RL32(data + 16);
    wv->samples = AV_RL32(data + 20);
    wv->flags = AV_RL32(data + 24);
    wv->crc = AV_RL32(data + 28);

    wv->initial = !!(wv->flags & WV_FLAG_INITIAL_BLOCK);
    wv->final = !!(wv->flags & WV_FLAG_FINAL_BLOCK);

    return 0;
}
