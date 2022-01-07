
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int depth; } ;
struct TYPE_5__ {TYPE_1__ path; } ;
struct TYPE_6__ {int result; int micro; int minor; int major; TYPE_2__ do_ctx; } ;
typedef TYPE_3__ preset_import_context_t ;
typedef int preset_do_context_t ;
typedef int const hb_value_t ;


 scalar_t__ cmpVersion (int ,int ,int ,int,int ,int ) ;
 int do_preset_import ;
 int const* hb_presets_update_version (int const*) ;
 int hb_presets_version (int const*,int *,int *,int *) ;
 int const* hb_value_dup (int const*) ;
 int hb_value_free (int const**) ;
 int const* import_hierarchy_29_0_0 (int const*) ;
 int presets_do (int ,int const*,int *) ;

int hb_presets_import(const hb_value_t *in, hb_value_t **out)
{
    preset_import_context_t ctx;
    hb_value_t * dup;

    ctx.do_ctx.path.depth = 1;
    ctx.result = 0;


    dup = hb_value_dup(in);
    hb_presets_version(dup, &ctx.major, &ctx.minor, &ctx.micro);
    presets_do(do_preset_import, dup, (preset_do_context_t*)&ctx);
    if (cmpVersion(ctx.major, ctx.minor, ctx.micro, 29, 0, 0) <= 0)
    {
        hb_value_t * tmp;

        tmp = import_hierarchy_29_0_0(dup);
        *out = hb_presets_update_version(tmp);
        hb_value_free(&tmp);
    }
    else if (ctx.result)
    {
        *out = hb_presets_update_version(dup);
    }
    else
    {
        *out = hb_value_dup(dup);
    }
    hb_value_free(&dup);

    return ctx.result;
}
