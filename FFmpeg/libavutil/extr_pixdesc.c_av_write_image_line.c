
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int AVPixFmtDescriptor ;


 int av_write_image_line2 (int const*,int **,int const*,int const*,int,int,int,int,int) ;

void av_write_image_line(const uint16_t *src,
                         uint8_t *data[4], const int linesize[4],
                         const AVPixFmtDescriptor *desc,
                         int x, int y, int c, int w)
{
    av_write_image_line2(src, data, linesize, desc, x, y, c, w, 2);
}
