
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVPacket ;
typedef int AVFormatContext ;


 int AVERROR_EOF ;

__attribute__((used)) static int read_packet(AVFormatContext *s, AVPacket *pkt)
{
    return AVERROR_EOF;
}
