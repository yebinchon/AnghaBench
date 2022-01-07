
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int frame_rate_list; } ;
typedef TYPE_1__ hb_filter_private_t ;
typedef int hb_buffer_t ;
typedef int hb_buffer_list_t ;


 int adjust_frame_rate (TYPE_1__*,int *) ;
 int hb_buffer_list_append (int *,int ) ;
 int * hb_buffer_list_clear (int *) ;
 scalar_t__ hb_list_count (int ) ;

__attribute__((used)) static hb_buffer_t * flush_frames(hb_filter_private_t * pv)
{
    hb_buffer_list_t list;

    hb_buffer_list_clear(&list);
    while (hb_list_count(pv->frame_rate_list) > 0)
    {
        hb_buffer_list_append(&list, adjust_frame_rate(pv, ((void*)0)));
    }

    return hb_buffer_list_clear(&list);
}
