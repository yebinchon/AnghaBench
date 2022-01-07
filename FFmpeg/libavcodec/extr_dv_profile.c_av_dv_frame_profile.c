
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int AVDVProfile ;


 int const* ff_dv_frame_profile (int *,int const*,int const*,unsigned int) ;

const AVDVProfile *av_dv_frame_profile(const AVDVProfile *sys,
                                       const uint8_t *frame, unsigned buf_size)
{
    return ff_dv_frame_profile(((void*)0), sys, frame, buf_size);
}
