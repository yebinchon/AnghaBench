
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int list_subtitle; } ;
typedef TYPE_1__ hb_title_t ;
struct TYPE_6__ {int source; } ;
typedef TYPE_2__ hb_subtitle_t ;
typedef int gint ;
typedef int GhbValue ;


 int IMPORTSRT ;
 int VOBSUB ;
 int ghb_dict_get_int (int *,char*) ;
 TYPE_1__* ghb_lookup_title (int,int*) ;
 TYPE_2__* hb_list_item (int ,int) ;

gint
ghb_subtitle_track_source(GhbValue *settings, gint track)
{
    gint title_id, titleindex;
    const hb_title_t *title;

    if (track == -2)
        return IMPORTSRT;
    if (track < 0)
        return VOBSUB;
    title_id = ghb_dict_get_int(settings, "title");
    title = ghb_lookup_title(title_id, &titleindex);
    if (title == ((void*)0))
        return VOBSUB;

    hb_subtitle_t * sub;
    sub = hb_list_item( title->list_subtitle, track);
    if (sub != ((void*)0))
        return sub->source;
    else
        return VOBSUB;
}
