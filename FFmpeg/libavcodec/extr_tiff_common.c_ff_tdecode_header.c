
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetByteContext ;


 int AVERROR_INVALIDDATA ;
 int AV_RB16 (char*) ;
 int bytestream2_get_bytes_left (int *) ;
 int bytestream2_get_le16u (int *) ;
 int ff_tget_long (int *,int) ;
 int ff_tget_short (int *,int) ;

int ff_tdecode_header(GetByteContext *gb, int *le, int *ifd_offset)
{
    if (bytestream2_get_bytes_left(gb) < 8) {
        return AVERROR_INVALIDDATA;
    }

    *le = bytestream2_get_le16u(gb);
    if (*le == AV_RB16("II")) {
        *le = 1;
    } else if (*le == AV_RB16("MM")) {
        *le = 0;
    } else {
        return AVERROR_INVALIDDATA;
    }

    if (ff_tget_short(gb, *le) != 42) {
        return AVERROR_INVALIDDATA;
    }

    *ifd_offset = ff_tget_long(gb, *le);

    return 0;
}
