
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int list_audio; } ;
typedef TYPE_3__ hb_title_t ;
typedef int hb_handle_t ;
struct TYPE_7__ {int codec_param; int codec; } ;
struct TYPE_8__ {TYPE_1__ in; } ;
struct TYPE_10__ {TYPE_2__ config; } ;
typedef TYPE_4__ hb_audio_t ;


 int hb_audio_can_apply_drc (int ,int ,int) ;
 TYPE_3__* hb_find_title_by_index (int *,int) ;
 TYPE_4__* hb_list_item (int ,int) ;

int hb_audio_can_apply_drc2(hb_handle_t *h, int title_idx, int audio_idx, int encoder)
{
    hb_title_t *title = hb_find_title_by_index(h, title_idx);
    if (title == ((void*)0))
        return 0;

    hb_audio_t *audio = hb_list_item(title->list_audio, audio_idx);
    if (audio == ((void*)0))
        return 0;

    return hb_audio_can_apply_drc(audio->config.in.codec,
                                  audio->config.in.codec_param, encoder);
}
