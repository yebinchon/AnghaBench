
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int depth; } ;
struct TYPE_4__ {TYPE_3__ path; } ;
typedef TYPE_1__ preset_do_context_t ;
typedef int hb_value_t ;
typedef int hb_preset_index_t ;


 int PRESET_DO_SUCCESS ;
 int do_find_default ;
 int * hb_preset_index_dup (TYPE_3__*) ;
 int presets_do (int ,int *,TYPE_1__*) ;

__attribute__((used)) static hb_preset_index_t * lookup_default_index(hb_value_t *list)
{
    preset_do_context_t ctx;
    int result;

    ctx.path.depth = 1;
    result = presets_do(do_find_default, list, &ctx);
    if (result != PRESET_DO_SUCCESS)
        ctx.path.depth = 0;
    return hb_preset_index_dup(&ctx.path);
}
