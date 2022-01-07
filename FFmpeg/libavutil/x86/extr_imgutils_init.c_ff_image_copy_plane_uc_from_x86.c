
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int AVERROR (int ) ;
 int ENOSYS ;
 scalar_t__ EXTERNAL_SSE4 (int) ;
 int FFALIGN (int ,int) ;
 int av_get_cpu_flags () ;
 int ff_image_copy_plane_uc_from_sse4 (int *,int ,int const*,int ,int ,int) ;

int ff_image_copy_plane_uc_from_x86(uint8_t *dst, ptrdiff_t dst_linesize,
                                    const uint8_t *src, ptrdiff_t src_linesize,
                                    ptrdiff_t bytewidth, int height)
{
    int cpu_flags = av_get_cpu_flags();
    ptrdiff_t bw_aligned = FFALIGN(bytewidth, 64);

    if (EXTERNAL_SSE4(cpu_flags) &&
        bw_aligned <= dst_linesize && bw_aligned <= src_linesize)
        ff_image_copy_plane_uc_from_sse4(dst, dst_linesize, src, src_linesize,
                                         bw_aligned, height);
    else
        return AVERROR(ENOSYS);

    return 0;
}
