
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_list_t ;


 int * h_scan ;
 int * hb_get_titles (int *) ;

hb_list_t *
ghb_get_title_list()
{
    if (h_scan == ((void*)0)) return ((void*)0);
    return hb_get_titles( h_scan );
}
