
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int preset_do_context_t ;
struct TYPE_2__ {int template; } ;
typedef TYPE_1__ preset_clean_context_t ;
typedef int hb_value_t ;


 int PRESET_DO_NEXT ;
 int preset_clean (int *,int ) ;

__attribute__((used)) static int do_preset_clean(hb_value_t *preset, preset_do_context_t *do_ctx)
{
    preset_clean_context_t *ctx = (preset_clean_context_t*)do_ctx;
    preset_clean(preset, ctx->template);
    return PRESET_DO_NEXT;
}
