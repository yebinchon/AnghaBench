
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int iso639_2; } ;
typedef TYPE_2__ iso639_lang_t ;
struct TYPE_10__ {int list_audio; } ;
typedef TYPE_3__ hb_title_t ;
struct TYPE_8__ {int attributes; int iso639_2; } ;
struct TYPE_11__ {TYPE_1__ lang; } ;
typedef TYPE_4__ hb_audio_config_t ;


 int HB_AUDIO_ATTR_NONE ;
 int HB_AUDIO_ATTR_REGULAR_MASK ;
 TYPE_4__* hb_list_audio_config_item (int ,int) ;
 int hb_list_count (int ) ;
 TYPE_2__* lang_get_any () ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static int find_audio_track(const hb_title_t *title,
                            const char *lang, int start, int behavior)
{
    hb_audio_config_t * audio;
    int ii, count;
    const iso639_lang_t * lang_any = lang_get_any();

    count = hb_list_count(title->list_audio);
    for (ii = start; ii < count; ii++)
    {
        audio = hb_list_audio_config_item(title->list_audio, ii);





        if ((behavior == 2 ||
             audio->lang.attributes == HB_AUDIO_ATTR_NONE ||
             (audio->lang.attributes & HB_AUDIO_ATTR_REGULAR_MASK)) &&
            (!strcmp(lang, audio->lang.iso639_2) ||
             !strcmp(lang, lang_any->iso639_2)))
        {
            return ii;
        }
    }
    return -1;
}
