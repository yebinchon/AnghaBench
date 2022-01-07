
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int splice_list_size; TYPE_1__* splice_list; } ;
typedef TYPE_2__ hb_work_private_t ;
typedef int hb_buffer_list_t ;
struct TYPE_4__ {int id; int list; } ;



__attribute__((used)) static hb_buffer_list_t * get_splice_list(hb_work_private_t * r, int id)
{
    int ii;

    for (ii = 0; ii < r->splice_list_size; ii++)
    {
        if (r->splice_list[ii].id == id)
        {
            return &r->splice_list[ii].list;
        }
    }
    return ((void*)0);
}
