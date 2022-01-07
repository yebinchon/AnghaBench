
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int AV_RB32 (int const*) ;

__attribute__((used)) static int mlp_get_major_sync_size(const uint8_t * buf, int bufsize)
{
    int has_extension, extensions = 0;
    int size = 28;
    if (bufsize < 28)
        return -1;

    if (AV_RB32(buf) == 0xf8726fba) {
        has_extension = buf[25] & 1;
        if (has_extension) {
            extensions = buf[26] >> 4;
            size += 2 + extensions * 2;
        }
    }
    return size;
}
