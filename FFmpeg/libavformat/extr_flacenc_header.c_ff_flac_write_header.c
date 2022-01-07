
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int AVIOContext ;


 int AVERROR_INVALIDDATA ;
 int FLAC_STREAMINFO_SIZE ;
 int avio_write (int *,int*,int) ;

int ff_flac_write_header(AVIOContext *pb, uint8_t *extradata,
                         int extradata_size, int last_block)
{
    uint8_t header[8] = {
        0x66, 0x4C, 0x61, 0x43, 0x00, 0x00, 0x00, 0x22
    };

    header[4] = last_block ? 0x80 : 0x00;

    if (extradata_size < FLAC_STREAMINFO_SIZE)
        return AVERROR_INVALIDDATA;


    avio_write(pb, header, 8);


    avio_write(pb, extradata, FLAC_STREAMINFO_SIZE);

    return 0;
}
