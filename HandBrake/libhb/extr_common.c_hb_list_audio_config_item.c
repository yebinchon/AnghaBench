
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hb_list_t ;
struct TYPE_3__ {int config; } ;
typedef TYPE_1__ hb_audio_t ;
typedef int hb_audio_config_t ;


 TYPE_1__* hb_list_item (int *,int) ;

hb_audio_config_t * hb_list_audio_config_item(hb_list_t * list, int i)
{
    hb_audio_t *audio = ((void*)0);

    if( (audio = hb_list_item(list, i)) )
        return &(audio->config);

    return ((void*)0);
}
