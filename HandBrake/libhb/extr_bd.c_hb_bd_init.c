
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int hb_handle_t ;
struct TYPE_4__ {int title_count; int * bd; int path; int disc_info; int * title_info; int * h; } ;
typedef TYPE_1__ hb_bd_t ;
typedef int BLURAY_TITLE_INFO ;


 int TITLES_RELEVANT ;
 int bd_close (int *) ;
 int bd_get_disc_info (int *) ;
 int bd_get_title_info (int *,int,int ) ;
 int bd_get_titles (int *,int ,int ) ;
 int * bd_open (char const*,int *) ;
 void* calloc (int,int) ;
 int free (TYPE_1__*) ;
 int hb_log (char*) ;
 int qsort (int *,int,int,int ) ;
 int strdup (char const*) ;
 int title_info_compare_mpls ;

hb_bd_t * hb_bd_init( hb_handle_t *h, const char * path )
{
    hb_bd_t * d;
    int ii;

    d = calloc( sizeof( hb_bd_t ), 1 );
    d->h = h;


    d->bd = bd_open( path, ((void*)0) );
    if( d->bd == ((void*)0) )
    {



        hb_log( "bd: not a bd - trying as a stream/file instead" );
        goto fail;
    }

    d->title_count = bd_get_titles( d->bd, TITLES_RELEVANT, 0 );
    if ( d->title_count == 0 )
    {
        hb_log( "bd: not a bd - trying as a stream/file instead" );
        goto fail;
    }
    d->title_info = calloc( sizeof( BLURAY_TITLE_INFO* ) , d->title_count );
    for ( ii = 0; ii < d->title_count; ii++ )
    {
        d->title_info[ii] = bd_get_title_info( d->bd, ii, 0 );
    }
    qsort(d->title_info, d->title_count, sizeof( BLURAY_TITLE_INFO* ), title_info_compare_mpls );
    d->disc_info = bd_get_disc_info(d->bd);
    d->path = strdup( path );

    return d;

fail:
    if( d->bd ) bd_close( d->bd );
    free( d );
    return ((void*)0);
}
