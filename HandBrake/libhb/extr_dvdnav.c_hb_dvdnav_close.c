
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* path; scalar_t__ reader; scalar_t__ vmg; scalar_t__ dvdnav; } ;
typedef TYPE_1__ hb_dvdnav_t ;
struct TYPE_7__ {TYPE_1__ dvdnav; } ;
typedef TYPE_2__ hb_dvd_t ;


 int DVDClose (scalar_t__) ;
 int TitleCloseIfo (TYPE_1__*) ;
 int dvdnav_close (scalar_t__) ;
 int free (TYPE_1__*) ;
 int ifoClose (scalar_t__) ;

__attribute__((used)) static void hb_dvdnav_close( hb_dvd_t ** _d )
{
    hb_dvdnav_t * d = &((*_d)->dvdnav);

    if (d->dvdnav) dvdnav_close( d->dvdnav );
    if (d->vmg) ifoClose( d->vmg );
    TitleCloseIfo(d);
    if (d->reader) DVDClose( d->reader );

    free(d->path);


    free( d );
    *_d = ((void*)0);
}
