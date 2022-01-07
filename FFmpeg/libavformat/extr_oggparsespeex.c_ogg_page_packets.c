
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ogg_stream {int nsegs; int* segments; } ;



__attribute__((used)) static int ogg_page_packets(struct ogg_stream *os)
{
    int i;
    int packets = 0;
    for (i = 0; i < os->nsegs; i++)
        if (os->segments[i] < 255)
            packets++;
    return packets;
}
