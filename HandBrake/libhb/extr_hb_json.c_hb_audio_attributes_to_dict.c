
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int text; } ;
typedef TYPE_1__ json_error_t ;
typedef int hb_dict_t ;


 int HB_AUDIO_ATTR_ALT_COMMENTARY ;
 int HB_AUDIO_ATTR_COMMENTARY ;
 int HB_AUDIO_ATTR_DEFAULT ;
 int HB_AUDIO_ATTR_NORMAL ;
 int HB_AUDIO_ATTR_SECONDARY ;
 int HB_AUDIO_ATTR_VISUALLY_IMPAIRED ;
 int hb_error (char*,int ) ;
 int hb_value_bool (int) ;
 int * json_pack_ex (TYPE_1__*,int ,char*,char*,int ,char*,int ,char*,int ,char*,int ,char*,int ,char*,int ) ;

hb_dict_t * hb_audio_attributes_to_dict(uint32_t attributes)
{
    json_error_t error;
    hb_dict_t * dict;

    dict = json_pack_ex(&error, 0,
        "{s:o, s:o, s:o, s:o, s:o, s:o}",
        "Normal", hb_value_bool(attributes & HB_AUDIO_ATTR_NORMAL),
        "VisuallyImpaired", hb_value_bool(attributes &
                                          HB_AUDIO_ATTR_VISUALLY_IMPAIRED),
        "Commentary", hb_value_bool(attributes &
                                          HB_AUDIO_ATTR_COMMENTARY),
        "AltCommentary", hb_value_bool(attributes &
                                          HB_AUDIO_ATTR_ALT_COMMENTARY),
        "Secondary", hb_value_bool(attributes & HB_AUDIO_ATTR_SECONDARY),
        "Default", hb_value_bool(attributes & HB_AUDIO_ATTR_DEFAULT));
    if (dict == ((void*)0))
    {
        hb_error("json pack failure: %s", error.text);
    }
    return dict;
}
