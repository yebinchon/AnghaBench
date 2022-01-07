
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int queue_end; int queue; int seek_table; } ;
typedef TYPE_1__ TTAMuxContext ;
typedef TYPE_2__ AVFormatContext ;


 int ff_packet_list_free (int *,int *) ;
 int ffio_free_dyn_buf (int *) ;

__attribute__((used)) static void tta_deinit(AVFormatContext *s)
{
    TTAMuxContext *tta = s->priv_data;

    ffio_free_dyn_buf(&tta->seek_table);
    ff_packet_list_free(&tta->queue, &tta->queue_end);
}
