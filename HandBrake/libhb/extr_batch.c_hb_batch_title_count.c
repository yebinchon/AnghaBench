
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int list_file; } ;
typedef TYPE_1__ hb_batch_t ;


 int hb_list_count (int ) ;

int hb_batch_title_count( hb_batch_t * d )
{
    return hb_list_count( d->list_file );
}
