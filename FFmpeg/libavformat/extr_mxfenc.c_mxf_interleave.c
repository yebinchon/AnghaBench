
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVPacket ;
typedef int AVFormatContext ;


 int ff_audio_rechunk_interleave (int *,int *,int *,int,int ,int ) ;
 int mxf_compare_timestamps ;
 int mxf_interleave_get_packet ;

__attribute__((used)) static int mxf_interleave(AVFormatContext *s, AVPacket *out, AVPacket *pkt, int flush)
{
    return ff_audio_rechunk_interleave(s, out, pkt, flush,
                               mxf_interleave_get_packet, mxf_compare_timestamps);
}
