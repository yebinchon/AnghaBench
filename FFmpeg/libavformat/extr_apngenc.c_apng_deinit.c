
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ extra_data_size; int extra_data; int prev_packet; } ;
struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ AVFormatContext ;
typedef TYPE_2__ APNGMuxContext ;


 int av_freep (int *) ;
 int av_packet_free (int *) ;

__attribute__((used)) static void apng_deinit(AVFormatContext *s)
{
    APNGMuxContext *apng = s->priv_data;

    av_packet_free(&apng->prev_packet);
    av_freep(&apng->extra_data);
    apng->extra_data_size = 0;
}
