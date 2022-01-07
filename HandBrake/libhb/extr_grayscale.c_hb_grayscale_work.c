
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int hb_filter_private_t ;
struct TYPE_9__ {int * private_data; } ;
typedef TYPE_2__ hb_filter_object_t ;
struct TYPE_8__ {int flags; } ;
struct TYPE_10__ {TYPE_1__ s; } ;
typedef TYPE_3__ hb_buffer_t ;


 int HB_BUF_FLAG_EOF ;
 int HB_FILTER_DONE ;
 int HB_FILTER_OK ;
 int grayscale_filter (int *,TYPE_3__*) ;

__attribute__((used)) static int hb_grayscale_work( hb_filter_object_t * filter,
                              hb_buffer_t ** buf_in,
                              hb_buffer_t ** buf_out )
{
    hb_filter_private_t * pv = filter->private_data;
    hb_buffer_t * in = *buf_in;

    *buf_in = ((void*)0);
    if (in->s.flags & HB_BUF_FLAG_EOF)
    {
        *buf_out = in;
        return HB_FILTER_DONE;
    }


    grayscale_filter(pv, in);

    *buf_out = in;

    return HB_FILTER_OK;
}
