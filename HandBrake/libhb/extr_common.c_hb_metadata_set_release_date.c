
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int release_date; } ;
typedef TYPE_1__ hb_metadata_t ;


 int hb_update_str (int *,char const*) ;

void hb_metadata_set_release_date( hb_metadata_t *metadata, const char *release_date )
{
    if ( metadata )
    {
        hb_update_str( &metadata->release_date, release_date );
    }
}
