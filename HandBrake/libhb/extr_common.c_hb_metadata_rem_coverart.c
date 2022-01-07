
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int list_coverart; } ;
typedef TYPE_1__ hb_metadata_t ;
struct TYPE_8__ {struct TYPE_8__* data; } ;
typedef TYPE_2__ hb_coverart_t ;


 int free (TYPE_2__*) ;
 TYPE_2__* hb_list_item (int ,int) ;
 int hb_list_rem (int ,TYPE_2__*) ;

void hb_metadata_rem_coverart( hb_metadata_t *metadata, int idx )
{
    if ( metadata )
    {
        hb_coverart_t *art = hb_list_item( metadata->list_coverart, idx );
        if ( art )
        {
            hb_list_rem( metadata->list_coverart, art );
            free( art->data );
            free( art );
        }
    }
}
