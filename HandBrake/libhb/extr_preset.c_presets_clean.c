
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int preset_do_context_t ;
struct TYPE_4__ {int depth; } ;
struct TYPE_5__ {TYPE_1__ path; } ;
struct TYPE_6__ {int * template; TYPE_2__ do_ctx; } ;
typedef TYPE_3__ preset_clean_context_t ;
typedef int hb_value_t ;


 int do_preset_clean ;
 int presets_do (int ,int *,int *) ;

__attribute__((used)) static void presets_clean(hb_value_t *presets, hb_value_t *template)
{
    preset_clean_context_t ctx;
    ctx.do_ctx.path.depth = 1;
    ctx.template = template;
    presets_do(do_preset_clean, presets, (preset_do_context_t*)&ctx);
}
