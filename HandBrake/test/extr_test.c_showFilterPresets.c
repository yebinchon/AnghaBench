
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int * const,char*,...) ;
 char** hb_filter_get_presets_short_name (int) ;
 int hb_str_vfree (char**) ;
 int strcasecmp (char*,char*) ;

__attribute__((used)) static void showFilterPresets(FILE* const out, int filter_id)
{
    char ** names = hb_filter_get_presets_short_name(filter_id);
    int ii, count = 0;


    for (ii = 0; names[ii] != ((void*)0); ii++)
    {
        if (!strcasecmp(names[ii], "custom") ||
            !strcasecmp(names[ii], "off") ||
            !strcasecmp(names[ii], "default"))
            continue;
        count++;
    }


    if (count == 0)
    {
        return;
    }
    fprintf(out, "                           Presets:\n");
    for (ii = 0; names[ii] != ((void*)0); ii++)
    {
        if (!strcasecmp(names[ii], "custom") ||
            !strcasecmp(names[ii], "off") ||
            !strcasecmp(names[ii], "default"))
            continue;
        fprintf(out, "                               %s\n", names[ii]);
    }

    hb_str_vfree(names);
}
