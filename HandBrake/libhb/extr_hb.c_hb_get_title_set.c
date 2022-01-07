
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hb_title_set_t ;
struct TYPE_3__ {int title_set; } ;
typedef TYPE_1__ hb_handle_t ;



hb_title_set_t * hb_get_title_set( hb_handle_t * h )
{
    return &h->title_set;
}
