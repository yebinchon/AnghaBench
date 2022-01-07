
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int int8_t ;


 int COPY_MAXIMA (int,int,int,int) ;





__attribute__((used)) static void non_maximum_suppression(int w, int h,
                                          uint8_t *dst, int dst_linesize,
                                    const int8_t *dir, int dir_linesize,
                                    const uint16_t *src, int src_linesize)
{
    int i, j;







    for (j = 1; j < h - 1; j++) {
        dst += dst_linesize;
        dir += dir_linesize;
        src += src_linesize;
        for (i = 1; i < w - 1; i++) {
            switch (dir[i]) {
            case 130: do { if (src[i] > src[(1)*src_linesize + i+(-1)] && src[i] > src[(-1)*src_linesize + i+(1)]) dst[i] = av_clip_uint8(src[i]); } while (0); break;
            case 131: do { if (src[i] > src[(-1)*src_linesize + i+(-1)] && src[i] > src[(1)*src_linesize + i+(1)]) dst[i] = av_clip_uint8(src[i]); } while (0); break;
            case 129: do { if (src[i] > src[(0)*src_linesize + i+(-1)] && src[i] > src[(0)*src_linesize + i+(1)]) dst[i] = av_clip_uint8(src[i]); } while (0); break;
            case 128: do { if (src[i] > src[(-1)*src_linesize + i+(0)] && src[i] > src[(1)*src_linesize + i+(0)]) dst[i] = av_clip_uint8(src[i]); } while (0); break;
            }
        }
    }
}
