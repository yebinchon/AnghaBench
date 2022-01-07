
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int image_copy_plane (int *,int,int const*,int,int,int) ;

void av_image_copy_plane(uint8_t *dst, int dst_linesize,
                         const uint8_t *src, int src_linesize,
                         int bytewidth, int height)
{
    image_copy_plane(dst, dst_linesize, src, src_linesize, bytewidth, height);
}
