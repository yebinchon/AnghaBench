
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pgn; scalar_t__ pgcn; scalar_t__ vts; scalar_t__ title; int * ifo; int list_dvd_chapter; } ;
typedef TYPE_1__ hb_dvdnav_t ;
typedef int hb_dvd_chapter_t ;


 int free (int *) ;
 int hb_list_close (int *) ;
 int * hb_list_item (int ,int ) ;
 int hb_list_rem (int ,int *) ;
 int ifoClose (int *) ;

__attribute__((used)) static void TitleCloseIfo(hb_dvdnav_t * d)
{
    hb_dvd_chapter_t * chapter;
    while ((chapter = hb_list_item(d->list_dvd_chapter, 0)))
    {
        hb_list_rem(d->list_dvd_chapter, chapter );
        free(chapter);
    }
    hb_list_close(&d->list_dvd_chapter);

    if (d->ifo)
    {
        ifoClose(d->ifo);
    }
    d->ifo = ((void*)0);
    d->title = 0;
    d->vts = 0;
    d->pgcn = 0;
    d->pgn = 0;
}
