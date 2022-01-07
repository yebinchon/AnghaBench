
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * file; int * ifo; } ;
typedef TYPE_1__ hb_dvdread_t ;
struct TYPE_5__ {TYPE_1__ dvdread; } ;
typedef TYPE_2__ hb_dvd_t ;


 int DVDCloseFile (int *) ;
 int ifoClose (int *) ;

__attribute__((used)) static void hb_dvdread_stop( hb_dvd_t * e )
{
    hb_dvdread_t *d = &(e->dvdread);
    if( d->ifo )
    {
        ifoClose( d->ifo );
        d->ifo = ((void*)0);
    }
    if( d->file )
    {
        DVDCloseFile( d->file );
        d->file = ((void*)0);
    }
}
