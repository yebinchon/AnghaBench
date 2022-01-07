
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ogg {int nstreams; TYPE_1__* streams; } ;
struct TYPE_2__ {scalar_t__ got_data; } ;



__attribute__((used)) static int data_packets_seen(const struct ogg *ogg)
{
    int i;

    for (i = 0; i < ogg->nstreams; i++)
        if (ogg->streams[i].got_data)
            return 1;
    return 0;
}
