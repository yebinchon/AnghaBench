
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_array_t ;
typedef int hb_dict_t ;


 int Indent (int ,char*,int) ;
 int fprintf (int ,char*,char const*) ;
 int * hb_dict_get (int *,char*) ;
 int * hb_presets_get () ;
 int hb_str_vfree (char**) ;
 int * hb_value_array_get (int *,int) ;
 int hb_value_array_len (int *) ;
 scalar_t__ hb_value_get_bool (int *) ;
 char* hb_value_get_string (int *) ;
 int stderr ;
 char** str_width_split (char const*,int) ;

__attribute__((used)) static void ShowPresets(hb_value_array_t *presets, int indent, int descriptions)
{
    if (presets == ((void*)0))
        presets = hb_presets_get();

    int count = hb_value_array_len(presets);
    int ii;
    for (ii = 0; ii < count; ii++)
    {
        const char *name;
        hb_dict_t *preset_dict = hb_value_array_get(presets, ii);
        name = hb_value_get_string(hb_dict_get(preset_dict, "PresetName"));
        Indent(stderr, "    ", indent);
        if (hb_value_get_bool(hb_dict_get(preset_dict, "Folder")))
        {
            indent++;
            fprintf(stderr, "%s/\n", name);
            hb_value_array_t *children;
            children = hb_dict_get(preset_dict, "ChildrenArray");
            if (children == ((void*)0))
                continue;
            ShowPresets(children, indent, descriptions);
            indent--;
        }
        else
        {
            fprintf(stderr, "%s\n", name);
            if (descriptions)
            {
                const char *desc;
                desc = hb_value_get_string(hb_dict_get(preset_dict,
                                                       "PresetDescription"));
                if (desc != ((void*)0) && desc[0] != 0)
                {
                    int ii;
                    char **split = str_width_split(desc, 60);
                    for (ii = 0; split[ii] != ((void*)0); ii++)
                    {
                        Indent(stderr, "    ", indent+1);
                        fprintf(stderr, "%s\n", split[ii]);
                    }
                    hb_str_vfree(split);
                }
            }
        }
    }
}
