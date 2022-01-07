
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVVDPAUContext ;


 int * av_vdpau_alloc_context () ;

AVVDPAUContext *av_alloc_vdpaucontext(void)
{
    return av_vdpau_alloc_context();
}
