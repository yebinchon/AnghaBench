
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int depth; } ;
struct TYPE_5__ {TYPE_1__ path; } ;
struct TYPE_6__ {int last_match_idx; int type; int name; scalar_t__ recurse; TYPE_2__ do_ctx; } ;
typedef TYPE_3__ preset_search_context_t ;
typedef int preset_do_context_t ;
typedef int hb_value_t ;


 int PRESET_DO_NEXT ;
 int PRESET_DO_PARTIAL ;
 int PRESET_DO_SKIP ;
 int preset_cmp_idx (int *,int,int ,int ) ;

__attribute__((used)) static int do_preset_search(hb_value_t *preset, preset_do_context_t *do_ctx)
{
    preset_search_context_t *ctx = (preset_search_context_t*)do_ctx;
    int idx, result;

    idx = ctx->do_ctx.path.depth - 1;
    if (ctx->last_match_idx >= 0 && idx > ctx->last_match_idx)
    {

        idx -= ctx->last_match_idx;
    }

    result = preset_cmp_idx(preset, idx, ctx->name, ctx->type);
    if (ctx->recurse && result == PRESET_DO_SKIP)
    {
        result = preset_cmp_idx(preset, 0, ctx->name, ctx->type);
        ctx->last_match_idx = idx;
    }
    if (result == PRESET_DO_PARTIAL)
    {
        return PRESET_DO_NEXT;
    }
    else
    {
        ctx->last_match_idx = -1;
    }

    return result;
}
