
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 int HB_FILTER_DECOMB ;
 int HB_FILTER_DEINTERLACE ;
 int HB_FILTER_DETELECINE ;
 int HB_FILTER_HQDN3D ;
 int HB_FILTER_NLMEANS ;
 int HB_FILTER_ROTATE ;
 int * hb_dict_get (int *,char*) ;
 char* hb_value_get_string (int *) ;
 int import_custom_11_1_0 (int *,int ,char*) ;
 scalar_t__ strcasecmp (char const*,char*) ;

__attribute__((used)) static void import_filters_11_1_0(hb_value_t *preset)
{
    hb_value_t *val = hb_dict_get(preset, "PictureDeinterlaceFilter");
    if (val != ((void*)0))
    {
        const char * str = hb_value_get_string(val);
        if (str != ((void*)0))
        {
            if (strcasecmp(str, "deinterlace"))
            {
                import_custom_11_1_0(preset, HB_FILTER_DEINTERLACE,
                                     "PictureDeinterlaceCustom");
            }
            else if (strcasecmp(str, "decomb"))
            {
                import_custom_11_1_0(preset, HB_FILTER_DECOMB,
                                     "PictureDeinterlaceCustom");
            }
        }
    }
    val = hb_dict_get(preset, "PictureDenoiseFilter");
    if (val != ((void*)0))
    {
        const char * str = hb_value_get_string(val);
        if (str != ((void*)0))
        {
            if (strcasecmp(str, "hqdn3d"))
            {
                import_custom_11_1_0(preset, HB_FILTER_HQDN3D,
                                     "PictureDenoiseCustom");
            }
            else if (strcasecmp(str, "nlmeans"))
            {
                import_custom_11_1_0(preset, HB_FILTER_NLMEANS,
                                     "PictureDenoiseCustom");
            }
        }
    }
    import_custom_11_1_0(preset, HB_FILTER_DETELECINE,
                         "PictureDetelecineCustom");
    import_custom_11_1_0(preset, HB_FILTER_ROTATE,
                         "PictureRotate");
}
