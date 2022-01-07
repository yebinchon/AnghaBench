
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int album_artist; } ;
typedef TYPE_1__ hb_metadata_t ;


 int hb_update_str (int *,char const*) ;

void hb_metadata_set_album_artist( hb_metadata_t *metadata, const char *album_artist )
{
    if ( metadata )
    {
        hb_update_str( &metadata->album_artist, album_artist );
    }
}
