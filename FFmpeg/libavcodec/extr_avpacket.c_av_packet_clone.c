
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVPacket ;


 int * av_packet_alloc () ;
 int av_packet_free (int **) ;
 scalar_t__ av_packet_ref (int *,int const*) ;

AVPacket *av_packet_clone(const AVPacket *src)
{
    AVPacket *ret = av_packet_alloc();

    if (!ret)
        return ret;

    if (av_packet_ref(ret, src))
        av_packet_free(&ret);

    return ret;
}
