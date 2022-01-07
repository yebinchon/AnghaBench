
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ file; int ctx; } ;
typedef TYPE_1__ hb_work_private_t ;
struct TYPE_6__ {TYPE_1__* private_data; } ;
typedef TYPE_2__ hb_work_object_t ;


 int fclose (scalar_t__) ;
 int free (TYPE_1__*) ;
 int th_encode_free (int ) ;

void enctheoraClose( hb_work_object_t * w )
{
    hb_work_private_t * pv = w->private_data;

    if (pv == ((void*)0))
    {
        return;
    }

    th_encode_free( pv->ctx );

    if( pv->file )
    {
        fclose( pv->file );
    }
    free( pv );
    w->private_data = ((void*)0);
}
