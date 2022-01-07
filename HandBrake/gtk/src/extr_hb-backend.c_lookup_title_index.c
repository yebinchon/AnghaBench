
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int index; } ;
typedef TYPE_1__ hb_title_t ;
typedef int hb_list_t ;
typedef int hb_handle_t ;


 int * hb_get_titles (int *) ;
 int hb_list_count (int *) ;
 TYPE_1__* hb_list_item (int *,int) ;

__attribute__((used)) static int
lookup_title_index(hb_handle_t *h, int title_id)
{
    if (h == ((void*)0))
        return -1;

    hb_list_t *list;
    const hb_title_t *title;
    int count, ii;

    list = hb_get_titles(h);
    count = hb_list_count(list);
    for (ii = 0; ii < count; ii++)
    {
        title = hb_list_item(list, ii);
        if (title_id == title->index)
        {
            return ii;
        }
    }
    return -1;
}
