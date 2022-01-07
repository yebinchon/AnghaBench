
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 int hb_dict_get_int (int *,char*) ;
 int hb_dict_remove (int *,char*) ;
 int hb_dict_set_string (int *,char*,char*) ;

__attribute__((used)) static void import_deblock_35_0_0(hb_value_t *preset)
{
    int deblock = hb_dict_get_int(preset, "PictureDeblock");

    if (deblock < 5)
    {
        hb_dict_set_string(preset, "PictureDeblockPreset", "off");
    }
    else if (deblock < 7)
    {
        hb_dict_set_string(preset, "PictureDeblockPreset", "medium");
    }
    else
    {
        hb_dict_set_string(preset, "PictureDeblockPreset", "strong");
    }
    hb_dict_set_string(preset, "PictureDeblockTune", "medium");
    hb_dict_set_string(preset, "PictureDeblockCustom",
                       "strength=strong:thresh=20");
    hb_dict_remove(preset, "PictureDeblock");
}
