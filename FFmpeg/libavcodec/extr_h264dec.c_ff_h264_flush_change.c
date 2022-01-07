
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int prev_frame_num; } ;
struct TYPE_9__ {int prev_interlaced_frame; int recovery_frame; int mmco_reset; scalar_t__ current_slice; scalar_t__ frame_recovered; scalar_t__ first_field; int last_pic_for_ec; TYPE_2__** delayed_pic; TYPE_2__* cur_pic_ptr; TYPE_1__ poc; int next_outputed_poc; } ;
struct TYPE_8__ {scalar_t__ reference; } ;
typedef TYPE_3__ H264Context ;


 int INT_MIN ;
 int ff_h264_unref_picture (TYPE_3__*,int *) ;
 int idr (TYPE_3__*) ;

void ff_h264_flush_change(H264Context *h)
{
    int i, j;

    h->next_outputed_poc = INT_MIN;
    h->prev_interlaced_frame = 1;
    idr(h);

    h->poc.prev_frame_num = -1;
    if (h->cur_pic_ptr) {
        h->cur_pic_ptr->reference = 0;
        for (j=i=0; h->delayed_pic[i]; i++)
            if (h->delayed_pic[i] != h->cur_pic_ptr)
                h->delayed_pic[j++] = h->delayed_pic[i];
        h->delayed_pic[j] = ((void*)0);
    }
    ff_h264_unref_picture(h, &h->last_pic_for_ec);

    h->first_field = 0;
    h->recovery_frame = -1;
    h->frame_recovered = 0;
    h->current_slice = 0;
    h->mmco_reset = 1;
}
