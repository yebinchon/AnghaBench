
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 int HB_FILTER_HQDN3D ;
 int * hb_dict_get (int *,char*) ;
 int hb_dict_set (int *,char*,int ) ;
 int hb_error (char*,int) ;
 int hb_value_get_int (int *) ;
 scalar_t__ hb_value_is_number (int *) ;
 int hb_value_string (char const*) ;
 char* import_indexed_filter (int ,int) ;

__attribute__((used)) static void import_denoise_0_0_0(hb_value_t *preset)
{
    hb_value_t *val = hb_dict_get(preset, "PictureDenoise");
    if (hb_value_is_number(val))
    {
        const char *s;
        int index = hb_value_get_int(val);
        s = import_indexed_filter(HB_FILTER_HQDN3D, index);
        if (s != ((void*)0))
        {
            hb_dict_set(preset, "PictureDenoiseFilter",
                        hb_value_string("hqdn3d"));
            hb_dict_set(preset, "PictureDenoisePreset", hb_value_string(s));
        }
        else
        {
            if (index != 0)
                hb_error("Invalid denoise index %d", index);
            hb_dict_set(preset, "PictureDenoiseFilter", hb_value_string("off"));
        }
    }
}
