
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 int * hb_dict_get (int *,char*) ;
 int hb_dict_set (int *,char*,int *) ;
 int hb_value_array_append (int *,int ) ;
 int * hb_value_array_init () ;
 scalar_t__ hb_value_get_bool (int *) ;
 int hb_value_string (char*) ;

__attribute__((used)) static void import_audio_0_0_0(hb_value_t *preset)
{
    hb_value_t *copy = hb_dict_get(preset, "AudioCopyMask");
    if (copy != ((void*)0))
        return;

    copy = hb_value_array_init();
    hb_dict_set(preset, "AudioCopyMask", copy);
    if (hb_value_get_bool(hb_dict_get(preset, "AudioAllowMP3Pass")))
        hb_value_array_append(copy, hb_value_string("copy:mp3"));
    if (hb_value_get_bool(hb_dict_get(preset, "AudioAllowAACPass")))
        hb_value_array_append(copy, hb_value_string("copy:aac"));
    if (hb_value_get_bool(hb_dict_get(preset, "AudioAllowAC3Pass")))
        hb_value_array_append(copy, hb_value_string("copy:ac3"));
    if (hb_value_get_bool(hb_dict_get(preset, "AudioAllowDTSPass")))
        hb_value_array_append(copy, hb_value_string("copy:dts"));
    if (hb_value_get_bool(hb_dict_get(preset, "AudioAllowDTSHDPass")))
        hb_value_array_append(copy, hb_value_string("copy:dtshd"));
    if (hb_value_get_bool(hb_dict_get(preset, "AudioAllowEAC3Pass")))
        hb_value_array_append(copy, hb_value_string("copy:eac3"));
    if (hb_value_get_bool(hb_dict_get(preset, "AudioAllowFLACPass")))
        hb_value_array_append(copy, hb_value_string("copy:flac"));
    if (hb_value_get_bool(hb_dict_get(preset, "AudioAllowTRUEHDPass")))
        hb_value_array_append(copy, hb_value_string("copy:truehd"));
}
