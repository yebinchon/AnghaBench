
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * path; } ;
struct TYPE_5__ {TYPE_1__ title_set; } ;
typedef TYPE_2__ hb_handle_t ;


 int free (char*) ;

void hb_force_rescan( hb_handle_t * h )
{
    free((char*)h->title_set.path);
    h->title_set.path = ((void*)0);
}
