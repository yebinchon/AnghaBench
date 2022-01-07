
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_title_t ;
typedef int hb_list_t ;
typedef int hb_handle_t ;


 int * hb_get_titles (int *) ;
 int const* hb_list_item (int *,int) ;
 int lookup_title_index (int *,int) ;

const hb_title_t*
lookup_title(hb_handle_t *h, int title_id, int *index)
{
    int ii = lookup_title_index(h, title_id);

    if (index != ((void*)0))
        *index = ii;
    if (ii < 0)
        return ((void*)0);

    hb_list_t *list;
    list = hb_get_titles(h);
    return hb_list_item(list, ii);
}
