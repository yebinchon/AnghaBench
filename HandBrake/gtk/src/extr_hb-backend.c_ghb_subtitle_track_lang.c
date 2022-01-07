
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int list_subtitle; } ;
typedef TYPE_1__ hb_title_t ;
struct TYPE_7__ {char const* iso639_2; } ;
typedef TYPE_2__ hb_subtitle_t ;
typedef int gint ;
typedef char gchar ;
typedef int GhbValue ;


 int ghb_dict_get_int (int *,char*) ;
 char const* ghb_get_user_audio_lang (int *,TYPE_1__ const*,int ) ;
 TYPE_1__* ghb_lookup_title (int,int*) ;
 TYPE_2__* hb_list_item (int ,int) ;

const gchar*
ghb_subtitle_track_lang(GhbValue *settings, gint track)
{
    gint title_id, titleindex;
    const hb_title_t * title;

    title_id = ghb_dict_get_int(settings, "title");
    title = ghb_lookup_title(title_id, &titleindex);
    if (title == ((void*)0))
        goto fail;
    if (track == -1)
        return ghb_get_user_audio_lang(settings, title, 0);
    if (track < 0)
        goto fail;

    hb_subtitle_t * sub;
    sub = hb_list_item( title->list_subtitle, track);
    if (sub != ((void*)0))
        return sub->iso639_2;

fail:
    return "und";
}
