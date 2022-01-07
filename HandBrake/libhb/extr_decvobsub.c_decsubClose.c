
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ buf; } ;
typedef TYPE_1__ hb_work_private_t ;
struct TYPE_6__ {TYPE_1__* private_data; } ;
typedef TYPE_2__ hb_work_object_t ;


 int free (TYPE_1__*) ;
 int hb_buffer_close (scalar_t__*) ;

void decsubClose( hb_work_object_t * w )
{
    hb_work_private_t * pv = w->private_data;

    if ( pv && pv->buf )
        hb_buffer_close( &pv->buf );
    free( w->private_data );
}
