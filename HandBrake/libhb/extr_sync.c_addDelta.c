
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {void* delta; void* pts; } ;
typedef TYPE_2__ sync_delta_t ;
struct TYPE_9__ {int stream_count; TYPE_1__* streams; } ;
typedef TYPE_3__ sync_common_t ;
typedef void* int64_t ;
struct TYPE_7__ {int delta_list; } ;


 int hb_list_add (int ,TYPE_2__*) ;
 TYPE_2__* malloc (int) ;

__attribute__((used)) static void addDelta( sync_common_t * common, int64_t start, int64_t delta)
{
    int ii;

    for (ii = 0; ii < common->stream_count; ii++)
    {
        sync_delta_t * delta_item = malloc(sizeof(sync_delta_t));
        delta_item->pts = start;
        delta_item->delta = delta;
        hb_list_add(common->streams[ii].delta_list, delta_item);
    }
}
