
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int frame_count; int ** buf; TYPE_2__* sub_filter; } ;
typedef TYPE_1__ hb_filter_private_t ;
typedef int hb_buffer_t ;
typedef int hb_buffer_list_t ;
struct TYPE_5__ {int (* work ) (TYPE_2__*,int **,int **) ;} ;


 int hb_buffer_close (int **) ;
 int hb_buffer_list_append (int *,int *) ;
 int * hb_buffer_list_clear (int *) ;
 int stub1 (TYPE_2__*,int **,int **) ;

__attribute__((used)) static hb_buffer_t * mt_frame_filter_flush(hb_filter_private_t *pv)
{
    hb_buffer_list_t list;

    hb_buffer_list_clear(&list);
    for (int f = 0; f < pv->frame_count; f++)
    {
        hb_buffer_t * out;
        pv->sub_filter->work(pv->sub_filter, &pv->buf[f], &out);

        if (pv->buf[f] != ((void*)0))
        {
            hb_buffer_close(&pv->buf[f]);
        }
        hb_buffer_list_append(&list, out);
    }
    pv->frame_count = 0;
    return hb_buffer_list_clear(&list);
}
