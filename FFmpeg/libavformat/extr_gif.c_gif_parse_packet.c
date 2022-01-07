
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int GetByteContext ;
typedef int AVFormatContext ;


 int GIF_EXTENSION_INTRODUCER ;
 int GIF_GCE_EXT_LABEL ;
 int bytestream2_get_byte (int *) ;
 scalar_t__ bytestream2_get_bytes_left (int *) ;
 int bytestream2_init (int *,int *,int) ;
 int bytestream2_skip (int *,int) ;
 int bytestream2_tell (int *) ;

__attribute__((used)) static int gif_parse_packet(AVFormatContext *s, uint8_t *data, int size)
{
    GetByteContext gb;
    int x;

    bytestream2_init(&gb, data, size);

    while (bytestream2_get_bytes_left(&gb) > 0) {
        x = bytestream2_get_byte(&gb);
        if (x != GIF_EXTENSION_INTRODUCER)
            return 0;

        x = bytestream2_get_byte(&gb);
        while (x != GIF_GCE_EXT_LABEL && bytestream2_get_bytes_left(&gb) > 0) {
            int block_size = bytestream2_get_byte(&gb);
            if (!block_size)
                break;
            bytestream2_skip(&gb, block_size);
        }

        if (x == GIF_GCE_EXT_LABEL)
            return bytestream2_tell(&gb) + 2;
    }

    return 0;
}
