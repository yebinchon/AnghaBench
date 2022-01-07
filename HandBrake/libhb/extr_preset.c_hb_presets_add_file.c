
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


 int do_make_custom ;
 int * hb_plist_parse_file (char const*) ;
 int hb_presets_add (int *) ;
 int hb_value_free (int **) ;
 int * hb_value_read_json (char const*) ;
 int presets_do (int ,int *,TYPE_2__*) ;

int hb_presets_add_file(const char *filename)
{
    hb_value_t *preset = hb_value_read_json(filename);
    if (preset == ((void*)0))
        preset = hb_plist_parse_file(filename);
    if (preset == ((void*)0))
        return -1;

    preset_do_context_t ctx;

    ctx.path.depth = 1;
    presets_do(do_make_custom, preset, &ctx);

    int result = hb_presets_add(preset);
    hb_value_free(&preset);

    return result;
}
