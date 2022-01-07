
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int hb_list_t ;
struct TYPE_4__ {int id; } ;
typedef TYPE_1__ hb_filter_object_t ;


 int hb_list_count (int const*) ;
 TYPE_1__* hb_list_item (int const*,int) ;

hb_filter_object_t * hb_filter_find(const hb_list_t *list, int filter_id)
{
    hb_filter_object_t *filter = ((void*)0);
    int ii;

    if (list == ((void*)0))
    {
        return ((void*)0);
    }
    for (ii = 0; ii < hb_list_count(list); ii++)
    {
        filter = hb_list_item(list, ii);
        if (filter->id == filter_id)
        {
            return filter;
        }
    }

    return ((void*)0);
}
