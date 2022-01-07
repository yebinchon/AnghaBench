
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int depth; } ;
struct TYPE_8__ {TYPE_1__ path; } ;
typedef TYPE_2__ preset_do_context_t ;
typedef int hb_value_t ;
struct TYPE_9__ {scalar_t__ depth; } ;
typedef TYPE_3__ hb_preset_index_t ;


 int do_clear_default ;
 int do_delete_builtin ;
 int free (TYPE_3__*) ;
 int * hb_presets ;
 int hb_presets_builtin ;
 int * hb_value_array_get (int *,int) ;
 int hb_value_array_insert (int *,int ,int *) ;
 int hb_value_array_len (int *) ;
 int * hb_value_dup (int ) ;
 int hb_value_free (int **) ;
 int hb_value_incref (int *) ;
 TYPE_3__* lookup_default_index (int *) ;
 int presets_do (int ,int *,TYPE_2__*) ;

void hb_presets_builtin_update(void)
{
    preset_do_context_t ctx;
    hb_preset_index_t *path;
    hb_value_t *builtin;
    int ii;

    ctx.path.depth = 1;
    presets_do(do_delete_builtin, hb_presets, &ctx);

    builtin = hb_value_dup(hb_presets_builtin);
    path = lookup_default_index(hb_presets);
    if (path != ((void*)0) && path->depth != 0)
    {


        ctx.path.depth = 1;
        presets_do(do_clear_default, builtin, &ctx);
    }
    free(path);

    for (ii = hb_value_array_len(builtin) - 1; ii >= 0; ii--)
    {
        hb_value_t *dict;
        dict = hb_value_array_get(builtin, ii);
        hb_value_incref(dict);
        hb_value_array_insert(hb_presets, 0, dict);
    }
    hb_value_free(&builtin);
}
