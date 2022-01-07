
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* human_readable_desc; } ;
typedef TYPE_1__ hb_filter_info_t ;


 int free (TYPE_1__*) ;

void hb_filter_info_close( hb_filter_info_t ** _fi )
{
    hb_filter_info_t * fi = *_fi;

    if (fi != ((void*)0))
    {
        free(fi->human_readable_desc);
    }

    free( fi );
    *_fi = ((void*)0);
}
