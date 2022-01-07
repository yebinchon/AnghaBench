
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVPacket ;
typedef int AVBSFContext ;


 int ff_bsf_get_packet_ref (int *,int *) ;

__attribute__((used)) static int null_filter(AVBSFContext *ctx, AVPacket *pkt)
{
    return ff_bsf_get_packet_ref(ctx, pkt);
}
