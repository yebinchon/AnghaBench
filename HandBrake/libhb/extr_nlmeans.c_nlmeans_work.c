
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int hb_filter_private_t ;
struct TYPE_14__ {int * private_data; } ;
typedef TYPE_2__ hb_filter_object_t ;
struct TYPE_13__ {int flags; } ;
struct TYPE_15__ {TYPE_1__ s; } ;
typedef TYPE_3__ hb_buffer_t ;
typedef int hb_buffer_list_t ;


 int HB_BUF_FLAG_EOF ;
 int HB_FILTER_DONE ;
 int HB_FILTER_OK ;
 int hb_buffer_list_append (int *,TYPE_3__*) ;
 TYPE_3__* hb_buffer_list_clear (int *) ;
 int hb_buffer_list_set (int *,TYPE_3__*) ;
 int nlmeans_add_frame (int *,TYPE_3__*) ;
 TYPE_3__* nlmeans_filter (int *) ;
 TYPE_3__* nlmeans_filter_flush (int *) ;

__attribute__((used)) static int nlmeans_work(hb_filter_object_t *filter,
                           hb_buffer_t **buf_in,
                           hb_buffer_t **buf_out )
{
    hb_filter_private_t *pv = filter->private_data;
    hb_buffer_t *in = *buf_in;

    if (in->s.flags & HB_BUF_FLAG_EOF)
    {
        hb_buffer_list_t list;
        hb_buffer_t *buf;


        buf = nlmeans_filter_flush(pv);
        hb_buffer_list_set(&list, buf);


        hb_buffer_list_append(&list, in);
        *buf_out = hb_buffer_list_clear(&list);

        *buf_in = ((void*)0);
        return HB_FILTER_DONE;
    }

    nlmeans_add_frame(pv, in);
    *buf_out = nlmeans_filter(pv);

    return HB_FILTER_OK;
}
