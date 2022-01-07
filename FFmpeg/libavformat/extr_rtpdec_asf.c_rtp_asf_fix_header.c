
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int ff_asf_guid ;


 scalar_t__ AV_RL32 (int *) ;
 int AV_RL64 (int *) ;
 int AV_WL32 (int *,int ) ;
 int ff_asf_file_header ;
 int ff_asf_header ;
 scalar_t__ memcmp (int *,int ,int) ;

__attribute__((used)) static int rtp_asf_fix_header(uint8_t *buf, int len)
{
    uint8_t *p = buf, *end = buf + len;

    if (len < sizeof(ff_asf_guid) * 2 + 22 ||
        memcmp(p, ff_asf_header, sizeof(ff_asf_guid))) {
        return -1;
    }
    p += sizeof(ff_asf_guid) + 14;
    do {
        uint64_t chunksize = AV_RL64(p + sizeof(ff_asf_guid));
        int skip = 6 * 8 + 3 * 4 + sizeof(ff_asf_guid) * 2;
        if (memcmp(p, ff_asf_file_header, sizeof(ff_asf_guid))) {
            if (chunksize > end - p)
                return -1;
            p += chunksize;
            continue;
        }

        if (end - p < 8 + skip)
            break;

        p += skip;
        if (AV_RL32(p) == AV_RL32(p + 4)) {

            AV_WL32(p, 0);
            return 0;
        }
        break;
    } while (end - p >= sizeof(ff_asf_guid) + 8);

    return -1;
}
