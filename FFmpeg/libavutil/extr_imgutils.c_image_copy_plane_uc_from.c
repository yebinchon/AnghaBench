
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int ff_image_copy_plane_uc_from_x86 (int *,int ,int const*,int ,int ,int) ;
 int image_copy_plane (int *,int ,int const*,int ,int ,int) ;

__attribute__((used)) static void image_copy_plane_uc_from(uint8_t *dst, ptrdiff_t dst_linesize,
                                     const uint8_t *src, ptrdiff_t src_linesize,
                                     ptrdiff_t bytewidth, int height)
{
    int ret = -1;






    if (ret < 0)
        image_copy_plane(dst, dst_linesize, src, src_linesize, bytewidth, height);
}
