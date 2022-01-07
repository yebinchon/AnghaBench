
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ data; } ;
struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {TYPE_4__* ahead; int nsvs_timestamps; int nsvs_file_offset; } ;
typedef TYPE_1__ NSVContext ;
typedef TYPE_2__ AVFormatContext ;


 int av_freep (int *) ;
 int av_packet_unref (TYPE_4__*) ;

__attribute__((used)) static int nsv_read_close(AVFormatContext *s)
{
    NSVContext *nsv = s->priv_data;

    av_freep(&nsv->nsvs_file_offset);
    av_freep(&nsv->nsvs_timestamps);
    if (nsv->ahead[0].data)
        av_packet_unref(&nsv->ahead[0]);
    if (nsv->ahead[1].data)
        av_packet_unref(&nsv->ahead[1]);
    return 0;
}
