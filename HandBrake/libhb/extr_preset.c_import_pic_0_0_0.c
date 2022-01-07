
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 scalar_t__ HB_VALUE_TYPE_STRING ;
 int * hb_dict_get (int *,char*) ;
 int hb_dict_set (int *,char*,int ) ;
 scalar_t__ hb_value_get_bool (int *) ;
 int hb_value_get_int (int *) ;
 char* hb_value_get_string (int *) ;
 int hb_value_int (int) ;
 scalar_t__ hb_value_is_number (int *) ;
 int hb_value_string (char const*) ;
 scalar_t__ hb_value_type (int *) ;
 scalar_t__ strcasecmp (char const*,char*) ;
 int strtol (char const*,char**,int ) ;

__attribute__((used)) static void import_pic_0_0_0(hb_value_t *preset)
{
    if (hb_value_get_bool(hb_dict_get(preset, "UsesMaxPictureSettings")))
    {

        hb_dict_set(preset, "UsesPictureSettings", hb_value_int(2));
    }

    hb_value_t *val = hb_dict_get(preset, "PicturePAR");
    if (hb_value_is_number(val))
    {
        const char *s;
        int pic_par = hb_value_get_int(val);
        switch (pic_par)
        {
            default:
            case 0:
                s = "off";
                break;
            case 1:
                s = "strict";
                break;
            case 2:
                s = "loose";
                break;
            case 3:
                s = "custom";
                break;
        }
        hb_dict_set(preset, "PicturePAR", hb_value_string(s));
    }
    else if (hb_value_type(val) == HB_VALUE_TYPE_STRING)
    {
        const char *v = hb_value_get_string(val);
        const char *s;
        char *end;
        int pic_par = strtol(v, &end, 0);
        if (end != v)
        {
            switch (pic_par)
            {
                default:
                case 2:
                    s = "loose";
                    break;
                case 0:
                    s = "off";
                    break;
                case 1:
                    s = "strict";
                    break;
                case 3:
                    s = "custom";
                    break;
            }
            hb_dict_set(preset, "PicturePAR", hb_value_string(s));
        }
        else
        {
            if (strcasecmp(v, "off") &&
                strcasecmp(v, "strict") &&
                strcasecmp(v, "loose") &&
                strcasecmp(v, "custom"))
            {
                hb_dict_set(preset, "PicturePAR", hb_value_string("loose"));
            }
        }
    }
}
