
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int * list_coverart; } ;
typedef TYPE_1__ hb_metadata_t ;
struct TYPE_7__ {int size; int type; int data; } ;
typedef TYPE_2__ hb_coverart_t ;


 TYPE_2__* calloc (int,int) ;
 int hb_list_add (int *,TYPE_2__*) ;
 int * hb_list_init () ;
 int malloc (int) ;
 int memcpy (int ,int const*,int) ;

void hb_metadata_add_coverart( hb_metadata_t *metadata, const uint8_t *data, int size, int type )
{
    if ( metadata )
    {
        if ( metadata->list_coverart == ((void*)0) )
        {
            metadata->list_coverart = hb_list_init();
        }
        hb_coverart_t *art = calloc( 1, sizeof(hb_coverart_t) );
        art->data = malloc( size );
        memcpy( art->data, data, size );
        art->size = size;
        art->type = type;
        hb_list_add( metadata->list_coverart, art );
    }
}
