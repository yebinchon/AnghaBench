
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int iso639_2; } ;
typedef TYPE_1__ iso639_lang_t ;
struct TYPE_8__ {int list_subtitle; } ;
typedef TYPE_2__ hb_title_t ;
struct TYPE_9__ {int iso639_2; } ;
typedef TYPE_3__ hb_subtitle_t ;


 int hb_list_count (int ) ;
 TYPE_3__* hb_list_item (int ,int) ;
 TYPE_1__* lang_get_any () ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static int find_subtitle_track(const hb_title_t *title,
                               const char *lang, int start)
{
    hb_subtitle_t * subtitle;
    int ii, count;
    const iso639_lang_t * lang_any = lang_get_any();

    count = hb_list_count(title->list_subtitle);
    for (ii = start; ii < count; ii++)
    {
        subtitle = hb_list_item(title->list_subtitle, ii);
        if (!strcmp(lang, subtitle->iso639_2) ||
            !strcmp(lang, lang_any->iso639_2))
        {
            return ii;
        }
    }
    return -1;
}
