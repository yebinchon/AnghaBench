
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_title_t ;
typedef int hb_handle_t ;
typedef int hb_dict_t ;


 int * hb_find_title_by_index (int *,int) ;
 int * hb_title_to_dict_internal (int *) ;

hb_dict_t* hb_title_to_dict( hb_handle_t *h, int title_index )
{
    hb_title_t *title = hb_find_title_by_index(h, title_index);
    return hb_title_to_dict_internal(title);
}
