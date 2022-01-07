
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVStereo3D ;


 int * av_mallocz (int) ;

AVStereo3D *av_stereo3d_alloc(void)
{
    return av_mallocz(sizeof(AVStereo3D));
}
