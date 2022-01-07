
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int AVCodecContext ;


 int * avpriv_find_start_code (int const*,int const*,int*) ;

int ff_mpeg4video_split(AVCodecContext *avctx, const uint8_t *buf, int buf_size)
{
    uint32_t state = -1;
    const uint8_t *ptr = buf, *end = buf + buf_size;

    while (ptr < end) {
        ptr = avpriv_find_start_code(ptr, end, &state);
        if (state == 0x1B3 || state == 0x1B6)
            return ptr - 4 - buf;
    }

    return 0;
}
