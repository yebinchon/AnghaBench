
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AVFormatContext {int dummy; } ;
typedef int AVPacket ;



__attribute__((used)) static int null_write_packet(struct AVFormatContext *s, AVPacket *pkt)
{
    return 0;
}
