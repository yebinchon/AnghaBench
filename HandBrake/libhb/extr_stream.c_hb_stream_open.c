
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int flags; } ;
typedef TYPE_1__ hb_title_t ;
struct TYPE_14__ {int has_IDRs; int scan; struct TYPE_14__* path; int * file_handle; TYPE_1__* title; int * h; } ;
typedef TYPE_2__ hb_stream_t ;
typedef int hb_handle_t ;
typedef int FILE ;


 int HBTF_NO_IDR ;
 TYPE_2__* calloc (int,int) ;
 int fclose (int *) ;
 scalar_t__ ffmpeg_open (TYPE_2__*,TYPE_1__*,int) ;
 int free (TYPE_2__*) ;
 int * hb_fopen (char const*,char*) ;
 int hb_log (char*,...) ;
 scalar_t__ hb_stream_get_type (TYPE_2__*) ;
 int hb_stream_seek (TYPE_2__*,int) ;
 int prune_streams (TYPE_2__*) ;
 TYPE_2__* strdup (char const*) ;

hb_stream_t *
hb_stream_open(hb_handle_t *h, const char *path, hb_title_t *title, int scan)
{
    if (title == ((void*)0))
    {
        hb_log("hb_stream_open: title is null");
        return ((void*)0);
    }

    FILE *f = hb_fopen(path, "rb");
    if ( f == ((void*)0) )
    {
        hb_log( "hb_stream_open: open %s failed", path );
        return ((void*)0);
    }

    hb_stream_t *d = calloc( sizeof( hb_stream_t ), 1 );
    if ( d == ((void*)0) )
    {
        fclose( f );
        hb_log( "hb_stream_open: can't allocate space for %s stream state", path );
        return ((void*)0);
    }

    if (!(title->flags & HBTF_NO_IDR))
    {
        d->has_IDRs = 1;
    }





    d->h = h;
    d->file_handle = f;
    d->title = title;
    d->scan = scan;
    d->path = strdup( path );
    if (d->path != ((void*)0) )
    {
        if (hb_stream_get_type( d ) != 0)
        {
            if( !scan )
            {
                prune_streams( d );
            }


            hb_stream_seek( d, 0. );
            return d;
        }
        fclose( d->file_handle );
        d->file_handle = ((void*)0);
        if ( ffmpeg_open( d, title, scan ) )
        {
            return d;
        }
    }
    if ( d->file_handle )
    {
        fclose( d->file_handle );
    }
    if (d->path)
    {
        free( d->path );
    }
    hb_log( "hb_stream_open: open %s failed", path );
    free( d );
    return ((void*)0);
}
