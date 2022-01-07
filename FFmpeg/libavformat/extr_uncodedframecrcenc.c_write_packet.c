
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AVFormatContext {int dummy; } ;
typedef int AVPacket ;


 int AVERROR (int ) ;
 int ENOSYS ;

__attribute__((used)) static int write_packet(struct AVFormatContext *s, AVPacket *pkt)
{
    return AVERROR(ENOSYS);
}
