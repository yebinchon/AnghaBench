
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_dict_t ;


 int fprintf (int ,char*,char const*) ;
 int * hb_dict_init () ;
 int hb_dict_set (int *,char*,int ) ;
 int * hb_parse_filter_settings (char const*) ;
 int hb_value_double (double) ;
 int hb_value_int (int) ;
 int stderr ;
 int strcasecmp (char const*,char*) ;

__attribute__((used)) static hb_dict_t * generate_unsharp_settings(const char *preset,
                                             const char *tune,
                                             const char *custom)
{
    hb_dict_t * settings;

    if (preset == ((void*)0))
        return ((void*)0);

    if (!strcasecmp(preset, "custom"))
    {
        return hb_parse_filter_settings(custom);
    }
    if (!strcasecmp(preset, "ultralight") ||
        !strcasecmp(preset, "light") ||
        !strcasecmp(preset, "medium") ||
        !strcasecmp(preset, "strong") ||
        !strcasecmp(preset, "stronger") ||
        !strcasecmp(preset, "verystrong"))
    {
        double strength[2];
        int size[2];

        if (tune == ((void*)0) || !strcasecmp(tune, "none"))
        {
            strength[0] = strength[1] = 0.25;
            size[0] = size[1] = 7;
            if (!strcasecmp(preset, "ultralight"))
            {
                strength[0] = strength[1] = 0.05;
            }
            else if (!strcasecmp(preset, "light"))
            {
                strength[0] = strength[1] = 0.15;
            }
            else if (!strcasecmp(preset, "strong"))
            {
                strength[0] = strength[1] = 0.5;
            }
            else if (!strcasecmp(preset, "stronger"))
            {
                strength[0] = strength[1] = 0.8;
            }
            else if (!strcasecmp(preset, "verystrong"))
            {
                strength[0] = strength[1] = 1.2;
            }
        }
        else if (!strcasecmp(tune, "ultrafine"))
        {
            strength[0] = 0.4; strength[1] = 0.25;
            size[0] = size[1] = 3;
            if (!strcasecmp(preset, "ultralight"))
            {
                strength[0] = 0.15; strength[1] = 0.1;
            }
            else if (!strcasecmp(preset, "light"))
            {
                strength[0] = 0.25; strength[1] = 0.15;
            }
            else if (!strcasecmp(preset, "strong"))
            {
                strength[0] = 0.8; strength[1] = 0.5;
            }
            else if (!strcasecmp(preset, "stronger"))
            {
                strength[0] = 1.2; strength[1] = 0.75;
            }
            else if (!strcasecmp(preset, "verystrong"))
            {
                strength[0] = 1.5; strength[1] = 0.9;
            }
        }
        else if (!strcasecmp(tune, "fine"))
        {
            strength[0] = 0.275; strength[1] = 0.165;
            size[0] = 7; size[1] = 5;
            if (!strcasecmp(preset, "ultralight"))
            {
                strength[0] = 0.055; strength[1] = 0.033;
            }
            else if (!strcasecmp(preset, "light"))
            {
                strength[0] = 0.165; strength[1] = 0.1;
            }
            else if (!strcasecmp(preset, "strong"))
            {
                strength[0] = 0.55; strength[1] = 0.33;
            }
            else if (!strcasecmp(preset, "stronger"))
            {
                strength[0] = 0.9; strength[1] = 0.6;
            }
            else if (!strcasecmp(preset, "verystrong"))
            {
                strength[0] = 1.35; strength[1] = 0.9;
            }
        }
        else if (!strcasecmp(tune, "medium"))
        {
            strength[0] = 0.275; strength[1] = 0.165;
            size[0] = 9; size[1] = 7;
            if (!strcasecmp(preset, "ultralight"))
            {
                strength[0] = 0.055; strength[1] = 0.033;
            }
            else if (!strcasecmp(preset, "light"))
            {
                strength[0] = 0.165; strength[1] = 0.1;
            }
            else if (!strcasecmp(preset, "strong"))
            {
                strength[0] = 0.55; strength[1] = 0.33;
            }
            else if (!strcasecmp(preset, "stronger"))
            {
                strength[0] = 0.9; strength[1] = 0.6;
            }
            else if (!strcasecmp(preset, "verystrong"))
            {
                strength[0] = 1.35; strength[1] = 0.9;
            }
        }
        else if (!strcasecmp(tune, "coarse"))
        {
            strength[0] = 0.275; strength[1] = 0.165;
            size[0] = 11; size[1] = 7;
            if (!strcasecmp(preset, "ultralight"))
            {
                strength[0] = 0.055; strength[1] = 0.033;
            }
            else if (!strcasecmp(preset, "light"))
            {
                strength[0] = 0.165; strength[1] = 0.1;
            }
            else if (!strcasecmp(preset, "strong"))
            {
                strength[0] = 0.55; strength[1] = 0.33;
            }
            else if (!strcasecmp(preset, "stronger"))
            {
                strength[0] = 0.9; strength[1] = 0.6;
            }
            else if (!strcasecmp(preset, "verystrong"))
            {
                strength[0] = 1.35; strength[1] = 0.9;
            }
        }
        else if (!strcasecmp(tune, "verycoarse"))
        {
            strength[0] = 0.275; strength[1] = 0.165;
            size[0] = 13; size[1] = 9;
            if (!strcasecmp(preset, "ultralight"))
            {
                strength[0] = 0.055; strength[1] = 0.033;
            }
            else if (!strcasecmp(preset, "light"))
            {
                strength[0] = 0.165; strength[1] = 0.1;
            }
            else if (!strcasecmp(preset, "strong"))
            {
                strength[0] = 0.55; strength[1] = 0.33;
            }
            else if (!strcasecmp(preset, "stronger"))
            {
                strength[0] = 0.9; strength[1] = 0.6;
            }
            else if (!strcasecmp(preset, "verystrong"))
            {
                strength[0] = 1.35; strength[1] = 0.9;
            }
        }
        else
        {
            fprintf(stderr, "Unrecognized unsharp tune (%s).\n", tune);
            return ((void*)0);
        }

        settings = hb_dict_init();
        hb_dict_set(settings, "y-strength", hb_value_double(strength[0]));
        hb_dict_set(settings, "y-size", hb_value_int(size[0]));

        hb_dict_set(settings, "cb-strength", hb_value_double(strength[1]));
        hb_dict_set(settings, "cb-size", hb_value_int(size[1]));
    }
    else
    {
        settings = hb_parse_filter_settings(preset);
        if (tune != ((void*)0))
        {
            fprintf(stderr, "Custom unsharp parameters specified; ignoring unsharp tune (%s).\n", tune);
        }
    }

    return settings;
}
