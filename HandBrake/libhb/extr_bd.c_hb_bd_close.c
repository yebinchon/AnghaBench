
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int title_count; struct TYPE_5__* path; scalar_t__ bd; scalar_t__ stream; struct TYPE_5__* title_info; } ;
typedef TYPE_1__ hb_bd_t ;


 int bd_close (scalar_t__) ;
 int bd_free_title_info (TYPE_1__) ;
 int free (TYPE_1__*) ;
 int hb_stream_close (scalar_t__*) ;

void hb_bd_close( hb_bd_t ** _d )
{
    hb_bd_t * d = *_d;
    int ii;

    if ( d->title_info )
    {
        for ( ii = 0; ii < d->title_count; ii++ )
            bd_free_title_info( d->title_info[ii] );
        free( d->title_info );
    }
    if( d->stream ) hb_stream_close( &d->stream );
    if( d->bd ) bd_close( d->bd );
    if( d->path ) free( d->path );

    free( d );
    *_d = ((void*)0);
}
