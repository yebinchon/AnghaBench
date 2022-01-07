
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_4__ {int list_dvd_chapter; int dvdnav; } ;
typedef TYPE_1__ hb_dvdnav_t ;
struct TYPE_5__ {TYPE_1__ dvdnav; } ;
typedef TYPE_2__ hb_dvd_t ;


 scalar_t__ DVDNAV_STATUS_OK ;
 int FindChapterIndex (int ,int,int) ;
 scalar_t__ dvdnav_current_title_program (int ,int*,int*,int*) ;

__attribute__((used)) static int hb_dvdnav_chapter( hb_dvd_t * e )
{
    hb_dvdnav_t * d = &(e->dvdnav);
    int32_t t, pgcn, pgn;
    int32_t c;

    if (dvdnav_current_title_program(d->dvdnav, &t, &pgcn, &pgn) != DVDNAV_STATUS_OK)
    {
        return -1;
    }
    c = FindChapterIndex( d->list_dvd_chapter, pgcn, pgn );
    return c;
}
