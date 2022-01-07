
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int method; } ;


 TYPE_1__* hb_audio_dithers_first_item ;

int hb_audio_dither_get_default()
{

    return hb_audio_dithers_first_item->method;
}
