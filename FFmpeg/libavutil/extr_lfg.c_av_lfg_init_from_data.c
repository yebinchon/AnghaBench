
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {unsigned int* state; scalar_t__ index; } ;
typedef TYPE_1__ AVLFG ;
typedef int AVCRC ;


 int AVERROR (int ) ;
 int AV_CRC_32_IEEE ;
 int EINVAL ;
 unsigned int UINT_MAX ;
 int av_crc (int const*,int,int const*,unsigned int) ;
 int * av_crc_get_table (int ) ;

int av_lfg_init_from_data(AVLFG *c, const uint8_t *data, unsigned int length) {
    unsigned int beg, end, segm;
    const AVCRC *avcrc;
    uint32_t crc = 1;


    if (length > (UINT_MAX / 128U)) return AVERROR(EINVAL);

    c->index = 0;
    avcrc = av_crc_get_table(AV_CRC_32_IEEE);




    beg = 0;
    for (segm = 0;segm < 64;segm++) {
        end = (((segm + 1) * length) / 64);
        crc = av_crc(avcrc, crc, data + beg, end - beg);
        c->state[segm] = (unsigned int)crc;
        beg = end;
    }

    return 0;
}
