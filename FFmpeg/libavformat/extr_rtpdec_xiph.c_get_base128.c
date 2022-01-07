
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static int get_base128(const uint8_t ** buf, const uint8_t * buf_end)
{
    int n = 0;
    for (; *buf < buf_end; ++*buf) {
        n <<= 7;
        n += **buf & 0x7f;
        if (!(**buf & 0x80)) {
            ++*buf;
            return n;
        }
    }
    return 0;
}
