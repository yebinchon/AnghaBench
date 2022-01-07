
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int queue_end; int queue; } ;
typedef TYPE_1__ MatroskaDemuxContext ;


 int ff_packet_list_free (int *,int *) ;

__attribute__((used)) static void matroska_clear_queue(MatroskaDemuxContext *matroska)
{
    ff_packet_list_free(&matroska->queue, &matroska->queue_end);
}
