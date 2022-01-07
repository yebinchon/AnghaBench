
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int64_t ;
typedef int AVIOContext ;






 int avio_write (int *,int const*,int) ;
 int parse_obu_header (int const*,int,int *,int*,int*,int*,int*) ;

int ff_av1_filter_obus(AVIOContext *pb, const uint8_t *buf, int size)
{
    const uint8_t *end = buf + size;
    int64_t obu_size;
    int start_pos, type, temporal_id, spatial_id;

    size = 0;
    while (buf < end) {
        int len = parse_obu_header(buf, end - buf, &obu_size, &start_pos,
                                   &type, &temporal_id, &spatial_id);
        if (len < 0)
            return len;

        switch (type) {
        case 129:
        case 130:
        case 128:
        case 131:
            break;
        default:
            avio_write(pb, buf, len);
            size += len;
            break;
        }
        buf += len;
    }

    return size;
}
