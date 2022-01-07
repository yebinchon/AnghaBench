
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_dict_t ;
typedef int FILE ;


 char* CHROMA_SMOOTH_DEFAULT_PRESET ;
 char* COMB_DETECT_DEFAULT_PRESET ;
 char* DEBLOCK_DEFAULT_PRESET ;
 char* DECOMB_DEFAULT_PRESET ;
 char* DEINTERLACE_DEFAULT_PRESET ;
 char* DETELECINE_DEFAULT_PRESET ;
 char* HQDN3D_DEFAULT_PRESET ;
 char* LAPSHARP_DEFAULT_PRESET ;
 char* NLMEANS_DEFAULT_PRESET ;
 char* ROTATE_DEFAULT ;
 char* UNSHARP_DEFAULT_PRESET ;
 int fprintf (int * const,char*,...) ;
 int free (char*) ;
 char* hb_filter_settings_string (int,int *) ;
 int * hb_generate_filter_settings (int,char const*,int *,int *) ;
 int hb_str_vfree (char**) ;
 char** hb_str_vsplit (char*,char) ;
 int hb_value_free (int **) ;
 int strlen (char*) ;

__attribute__((used)) static void showFilterDefault(FILE* const out, int filter_id)
{
    const char * preset = "default";

    fprintf(out, "                           Default:\n"
                 "                               ");
    switch (filter_id)
    {
        case 128:
            preset = UNSHARP_DEFAULT_PRESET;
            break;
        case 131:
            preset = LAPSHARP_DEFAULT_PRESET;
            break;
        case 138:
            preset = CHROMA_SMOOTH_DEFAULT_PRESET;
            break;
        case 130:
            preset = NLMEANS_DEFAULT_PRESET;
            break;
        case 134:
            preset = DEINTERLACE_DEFAULT_PRESET;
            break;
        case 135:
            preset = DECOMB_DEFAULT_PRESET;
            break;
        case 133:
            preset = DETELECINE_DEFAULT_PRESET;
            break;
        case 132:
            preset = HQDN3D_DEFAULT_PRESET;
            break;
        case 137:
            preset = COMB_DETECT_DEFAULT_PRESET;
            break;
        case 136:
            preset = DEBLOCK_DEFAULT_PRESET;
            break;
        default:
            break;
    }
    switch (filter_id)
    {
        case 134:
        case 130:
        case 138:
        case 128:
        case 131:
        case 135:
        case 133:
        case 132:
        case 137:
        case 136:
        {
            hb_dict_t * settings;
            settings = hb_generate_filter_settings(filter_id, preset,
                                                   ((void*)0), ((void*)0));
            char * str = hb_filter_settings_string(filter_id, settings);
            hb_value_free(&settings);

            char ** split = hb_str_vsplit(str, ':');
            char * colon = "", * newline;
            int ii, linelen = 0;

            for (ii = 0; split[ii] != ((void*)0); ii++)
            {
                int len = strlen(split[ii]) + 1;
                if (linelen + len > 48)
                {
                    newline = "\n                               ";
                    linelen = 0;
                }
                else
                {
                    newline = "";
                }
                fprintf(out, "%s%s%s", colon, newline, split[ii]);
                linelen += len;
                colon = ":";
            }
            hb_str_vfree(split);
            free(str);
        } break;
        case 129:
            fprintf(out, "%s", ROTATE_DEFAULT);
            break;
        default:
            break;
    }
    fprintf(out, "\n");
}
