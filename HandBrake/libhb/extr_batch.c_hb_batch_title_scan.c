
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hb_title_t ;
typedef int hb_stream_t ;
struct TYPE_3__ {int h; int list_file; } ;
typedef TYPE_1__ hb_batch_t ;


 char* hb_list_item (int ,int) ;
 int hb_log (char*,char*) ;
 int hb_stream_close (int **) ;
 int * hb_stream_open (int ,char*,int *,int) ;
 int * hb_stream_title_scan (int *,int *) ;
 int hb_title_close (int **) ;
 int * hb_title_init (char*,int) ;

hb_title_t * hb_batch_title_scan( hb_batch_t * d, int t )
{

    hb_title_t * title;
    char * filename;
    hb_stream_t * stream;

    if ( t < 0 )
        return ((void*)0);

    filename = hb_list_item( d->list_file, t - 1 );
    if ( filename == ((void*)0) )
        return ((void*)0);

    hb_log( "batch: scanning %s", filename );
    title = hb_title_init( filename, t );
    stream = hb_stream_open(d->h, filename, title, 1);
    if ( stream == ((void*)0) )
    {
        hb_title_close( &title );
        return ((void*)0);
    }

    title = hb_stream_title_scan( stream, title );
    hb_stream_close( &stream );

    return title;
}
