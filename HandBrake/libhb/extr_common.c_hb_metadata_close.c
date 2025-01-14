
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ list_coverart; struct TYPE_7__* data; struct TYPE_7__* long_description; struct TYPE_7__* description; struct TYPE_7__* genre; struct TYPE_7__* album_artist; struct TYPE_7__* album; struct TYPE_7__* comment; struct TYPE_7__* release_date; struct TYPE_7__* composer; struct TYPE_7__* artist; struct TYPE_7__* name; } ;
typedef TYPE_1__ hb_metadata_t ;
typedef TYPE_1__ hb_coverart_t ;


 int free (TYPE_1__*) ;
 int hb_list_close (scalar_t__*) ;
 TYPE_1__* hb_list_item (scalar_t__,int ) ;
 int hb_list_rem (scalar_t__,TYPE_1__*) ;

void hb_metadata_close( hb_metadata_t **_m )
{
    if ( _m && *_m )
    {
        hb_metadata_t *m = *_m;
        hb_coverart_t *art;

        free( m->name );
        free( m->artist );
        free( m->composer );
        free( m->release_date );
        free( m->comment );
        free( m->album );
        free( m->album_artist );
        free( m->genre );
        free( m->description );
        free( m->long_description );

        if ( m->list_coverart )
        {
            while( ( art = hb_list_item( m->list_coverart, 0 ) ) )
            {
                hb_list_rem( m->list_coverart, art );
                free( art->data );
                free( art );
            }
            hb_list_close( &m->list_coverart );
        }

        free( m );
        *_m = ((void*)0);
    }
}
