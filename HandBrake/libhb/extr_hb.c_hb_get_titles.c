
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int hb_list_t ;
struct TYPE_4__ {int * list_title; } ;
struct TYPE_5__ {TYPE_1__ title_set; } ;
typedef TYPE_2__ hb_handle_t ;



hb_list_t * hb_get_titles( hb_handle_t * h )
{
    return h->title_set.list_title;
}
