
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int prev_poc_msb; int prev_poc_lsb; scalar_t__ prev_frame_num_offset; scalar_t__ prev_frame_num; } ;
struct TYPE_6__ {int * last_pocs; TYPE_1__ poc; } ;
typedef TYPE_2__ H264Context ;


 int INT_MIN ;
 int MAX_DELAYED_PIC_COUNT ;
 int ff_h264_remove_all_refs (TYPE_2__*) ;

__attribute__((used)) static void idr(H264Context *h)
{
    int i;
    ff_h264_remove_all_refs(h);
    h->poc.prev_frame_num =
    h->poc.prev_frame_num_offset = 0;
    h->poc.prev_poc_msb = 1<<16;
    h->poc.prev_poc_lsb = -1;
    for (i = 0; i < MAX_DELAYED_PIC_COUNT; i++)
        h->last_pocs[i] = INT_MIN;
}
