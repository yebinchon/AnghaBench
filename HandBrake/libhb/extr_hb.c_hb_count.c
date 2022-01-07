
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int jobs; } ;
typedef TYPE_1__ hb_handle_t ;


 int hb_list_count (int ) ;

int hb_count( hb_handle_t * h )
{
    return hb_list_count( h->jobs );
}
