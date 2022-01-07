
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ SwsContext ;


 int NV12 ;
 int NV21 ;
 int SET_FF_NVX_TO_ALL_RGBX_FUNC (int ,int ,int) ;
 int SWS_ACCURATE_RND ;
 int YUV420P ;
 int YUV422P ;
 int nv12 ;
 int nv21 ;
 int yuv420p ;
 int yuv422p ;

__attribute__((used)) static void get_unscaled_swscale_neon(SwsContext *c) {
    int accurate_rnd = c->flags & SWS_ACCURATE_RND;

    SET_FF_NVX_TO_ALL_RGBX_FUNC(nv12, NV12, accurate_rnd);
    SET_FF_NVX_TO_ALL_RGBX_FUNC(nv21, NV21, accurate_rnd);
    SET_FF_NVX_TO_ALL_RGBX_FUNC(yuv420p, YUV420P, accurate_rnd);
    SET_FF_NVX_TO_ALL_RGBX_FUNC(yuv422p, YUV422P, accurate_rnd);
}
