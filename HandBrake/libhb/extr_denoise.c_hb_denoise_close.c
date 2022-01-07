
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__** hqdn3d_frame; struct TYPE_5__* hqdn3d_line; } ;
typedef TYPE_1__ hb_filter_private_t ;
struct TYPE_6__ {TYPE_1__* private_data; } ;
typedef TYPE_2__ hb_filter_object_t ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void hb_denoise_close( hb_filter_object_t * filter )
{
    hb_filter_private_t * pv = filter->private_data;

    if( !pv )
    {
        return;
    }

 if( pv->hqdn3d_line )
    {
        free( pv->hqdn3d_line );
        pv->hqdn3d_line = ((void*)0);
    }
 if( pv->hqdn3d_frame[0] )
    {
        free( pv->hqdn3d_frame[0] );
        pv->hqdn3d_frame[0] = ((void*)0);
    }
 if( pv->hqdn3d_frame[1] )
    {
        free( pv->hqdn3d_frame[1] );
        pv->hqdn3d_frame[1] = ((void*)0);
    }
 if( pv->hqdn3d_frame[2] )
    {
        free( pv->hqdn3d_frame[2] );
        pv->hqdn3d_frame[2] = ((void*)0);
    }

    free( pv );
    filter->private_data = ((void*)0);
}
