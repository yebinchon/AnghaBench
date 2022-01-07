
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int AVERROR_INVALIDDATA ;
 int flac_parse_block_header (int const*,int*,int *,int*) ;

__attribute__((used)) static int get_metadata_size(const uint8_t *buf, int buf_size)
{
    int metadata_last, metadata_size;
    const uint8_t *buf_end = buf + buf_size;

    buf += 4;
    do {
        if (buf_end - buf < 4)
            return AVERROR_INVALIDDATA;
        flac_parse_block_header(buf, &metadata_last, ((void*)0), &metadata_size);
        buf += 4;
        if (buf_end - buf < metadata_size) {

            return AVERROR_INVALIDDATA;
        }
        buf += metadata_size;
    } while (!metadata_last);

    return buf_size - (buf_end - buf);
}
