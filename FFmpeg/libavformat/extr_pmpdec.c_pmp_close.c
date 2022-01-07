
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int packet_sizes; } ;
typedef TYPE_1__ PMPContext ;
typedef TYPE_2__ AVFormatContext ;


 int av_freep (int *) ;

__attribute__((used)) static int pmp_close(AVFormatContext *s)
{
    PMPContext *pmp = s->priv_data;
    av_freep(&pmp->packet_sizes);
    return 0;
}
