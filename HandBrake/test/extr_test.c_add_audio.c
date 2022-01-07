
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hb_value_array_t ;
struct TYPE_3__ {int list_audio; } ;
typedef TYPE_1__ hb_title_t ;
typedef int hb_dict_t ;


 int fprintf (int ,char*,int) ;
 int * hb_dict_init () ;
 int hb_dict_set (int *,char*,int ) ;
 int * hb_list_item (int ,int) ;
 int hb_value_array_append (int *,int *) ;
 int hb_value_int (int) ;
 int stderr ;

__attribute__((used)) static int add_audio(hb_value_array_t *list, hb_title_t *title, int track)
{

    if (hb_list_item(title->list_audio, track-1) == ((void*)0))
    {
        fprintf(stderr, "Warning: Could not find audio track %d, skipped\n",
                track);
        return -1;
    }
    hb_dict_t *audio_dict = hb_dict_init();
    hb_dict_set(audio_dict, "Track", hb_value_int(track-1));
    hb_value_array_append(list, audio_dict);

    return 0;
}
