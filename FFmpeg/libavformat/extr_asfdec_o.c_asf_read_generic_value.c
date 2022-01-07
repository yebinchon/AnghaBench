
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int AVIOContext ;






 int AVERROR_INVALIDDATA ;
 int avio_rl16 (int *) ;
 int avio_rl32 (int *) ;
 int avio_rl64 (int *) ;

__attribute__((used)) static int asf_read_generic_value(AVIOContext *pb, int type, uint64_t *value)
{

    switch (type) {
    case 131:
        *value = avio_rl16(pb);
        break;
    case 130:
        *value = avio_rl32(pb);
        break;
    case 129:
        *value = avio_rl64(pb);
        break;
    case 128:
        *value = avio_rl16(pb);
        break;
    default:
        return AVERROR_INVALIDDATA;
    }

    return 0;
}
