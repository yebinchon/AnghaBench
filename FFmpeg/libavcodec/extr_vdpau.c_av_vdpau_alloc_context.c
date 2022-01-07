
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VDPAUHWContext ;
typedef int AVVDPAUContext ;


 int * av_mallocz (int) ;

AVVDPAUContext *av_vdpau_alloc_context(void)
{
    return av_mallocz(sizeof(VDPAUHWContext));
}
