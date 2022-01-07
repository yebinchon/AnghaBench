
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int builder; } ;
typedef TYPE_2__ signal_user_data_t ;
struct TYPE_11__ {int codec; } ;
typedef TYPE_3__ hb_encoder_t ;
struct TYPE_9__ {int codec; } ;
struct TYPE_12__ {TYPE_1__ in; } ;
typedef TYPE_4__ hb_audio_config_t ;


 int HB_ACODEC_MASK ;
 int HB_ACODEC_PASS_FLAG ;
 int TRUE ;
 int grey_builder_combo_box_item (int ,char*,int,int ) ;
 TYPE_3__* hb_audio_encoder_get_next (TYPE_3__ const*) ;

__attribute__((used)) static void grey_passthru(signal_user_data_t *ud, hb_audio_config_t *aconfig)
{
    const hb_encoder_t *enc;

    if (aconfig == ((void*)0))
        return;

    for (enc = hb_audio_encoder_get_next(((void*)0)); enc != ((void*)0);
         enc = hb_audio_encoder_get_next(enc))
    {
        if (!(enc->codec & HB_ACODEC_PASS_FLAG))
            continue;
        if ((enc->codec & HB_ACODEC_MASK) !=
            (aconfig->in.codec & HB_ACODEC_MASK))
        {
            grey_builder_combo_box_item(ud->builder, "AudioEncoder",
                enc->codec, TRUE);
        }
    }
}
