
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int comment; } ;
typedef TYPE_1__ hb_metadata_t ;


 int hb_update_str (int *,char const*) ;

void hb_metadata_set_comment( hb_metadata_t *metadata, const char *comment )
{
    if ( metadata )
    {
        hb_update_str( &metadata->comment, comment );
    }
}
