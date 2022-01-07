
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int int64_t ;
typedef int NUTContext ;
typedef int AVIOContext ;


 scalar_t__ av_be2ne64 (scalar_t__) ;
 int avio_rb32 (int *) ;
 scalar_t__ ff_crc04C11DB7_update (int ,int *,int) ;
 scalar_t__ ffio_get_checksum (int *) ;
 int ffio_init_checksum (int *,scalar_t__ (*) (int ,int *,int),scalar_t__) ;
 int ffio_read_varlen (int *) ;

__attribute__((used)) static int get_packetheader(NUTContext *nut, AVIOContext *bc,
                            int calculate_checksum, uint64_t startcode)
{
    int64_t size;

    startcode = av_be2ne64(startcode);
    startcode = ff_crc04C11DB7_update(0, (uint8_t*) &startcode, 8);

    ffio_init_checksum(bc, ff_crc04C11DB7_update, startcode);
    size = ffio_read_varlen(bc);
    if (size > 4096)
        avio_rb32(bc);
    if (ffio_get_checksum(bc) && size > 4096)
        return -1;

    ffio_init_checksum(bc, calculate_checksum ? ff_crc04C11DB7_update : ((void*)0), 0);

    return size;
}
