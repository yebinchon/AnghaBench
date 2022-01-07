
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int depth; } ;
struct TYPE_5__ {TYPE_1__ path; } ;
typedef TYPE_2__ preset_do_context_t ;
typedef int hb_value_t ;


 int HB_PRESET_JSON_FILE ;
 int HB_PRESET_PLIST_FILE ;
 int do_delete_builtin ;
 int hb_error (char*,...) ;
 int hb_get_user_config_filename (char*,char*,int ) ;
 int * hb_plist_parse_file (char*) ;
 int hb_presets_add (int *) ;
 int hb_value_free (int **) ;
 int * hb_value_read_json (char*) ;
 int presets_do (int ,int *,TYPE_2__*) ;

int hb_presets_gui_init(void)
{
    char path[1024];
    hb_value_t * dict = ((void*)0);
    if (dict == ((void*)0))
    {
        hb_error("Failed to load GUI presets file");






        return -1;
    }
    else
    {
        preset_do_context_t ctx;
        ctx.path.depth = 1;
        presets_do(do_delete_builtin, dict, &ctx);
        int result = hb_presets_add(dict);
        hb_value_free(&dict);
        return result;
    }
    return -1;
}
