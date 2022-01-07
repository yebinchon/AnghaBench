
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 int free (char*) ;
 int * hb_dict_get (int *,char*) ;
 int hb_dict_set (int *,char*,int ) ;
 char* hb_strdup_printf (char*,int,int) ;
 char* hb_value_get_string (int *) ;
 int hb_value_string (char*) ;
 int sscanf (char const*,char*,int*,int*) ;
 scalar_t__ strcasecmp (char const*,char*) ;

__attribute__((used)) static void import_deint_11_0_0(hb_value_t *preset)
{
    hb_value_t *val = hb_dict_get(preset, "PictureDeinterlaceFilter");
    if (val == ((void*)0))
    {
        return;
    }
    const char * deint = hb_value_get_string(val);
    if (deint == ((void*)0))
    {

        return;
    }
    if (strcasecmp(deint, "deinterlace"))
    {
        return;
    }
    val = hb_dict_get(preset, "PictureDeinterlacePreset");
    if (val == ((void*)0))
    {
        hb_dict_set(preset, "PictureDeinterlacePreset",
                    hb_value_string("default"));
        return;
    }
    deint = hb_value_get_string(val);
    if (deint == ((void*)0))
    {

        return;
    }
    if (!strcasecmp(deint, "fast") || !strcasecmp(deint, "slow"))
    {

        hb_dict_set(preset, "PictureDeinterlacePreset",
                    hb_value_string("skip-spatial"));
        return;
    }
    else if (!strcasecmp(deint, "bob") || !strcasecmp(deint, "default"))
    {
        return;
    }
    else if (strcasecmp(deint, "custom"))
    {

        hb_dict_set(preset, "PictureDeinterlacePreset",
                    hb_value_string("default"));
        return;
    }
    val = hb_dict_get(preset, "PictureDeinterlaceCustom");
    if (val == ((void*)0))
    {
        hb_dict_set(preset, "PictureDeinterlacePreset",
                    hb_value_string("default"));
        return;
    }

    deint = hb_value_get_string(val);
    if (deint == ((void*)0))
    {

        return;
    }
    int bob, spatial, yadif, mode = 3, parity = -1;
    sscanf(deint, "%d:%d", &mode, &parity);
    yadif = !!(mode & 1);
    spatial = !!(mode & 2);
    bob = !!(mode & 8);
    mode = yadif + (yadif && spatial) * 2 + bob * 4;
    char * custom = hb_strdup_printf("%d:%d", mode, parity);
    hb_dict_set(preset, "PictureDeinterlaceCustom", hb_value_string(custom));
    free(custom);
}
