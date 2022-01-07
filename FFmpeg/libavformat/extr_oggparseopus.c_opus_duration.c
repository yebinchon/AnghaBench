
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int AVERROR_INVALIDDATA ;
 int FFMAX (int,int) ;

__attribute__((used)) static int opus_duration(uint8_t *src, int size)
{
    unsigned nb_frames = 1;
    unsigned toc = src[0];
    unsigned toc_config = toc >> 3;
    unsigned toc_count = toc & 3;
    unsigned frame_size = toc_config < 12 ? FFMAX(480, 960 * (toc_config & 3)) :
                          toc_config < 16 ? 480 << (toc_config & 1) :
                                            120 << (toc_config & 3);
    if (toc_count == 3) {
        if (size<2)
            return AVERROR_INVALIDDATA;
        nb_frames = src[1] & 0x3F;
    } else if (toc_count) {
        nb_frames = 2;
    }

    return frame_size * nb_frames;
}
