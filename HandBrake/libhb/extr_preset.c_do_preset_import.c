
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int micro; int minor; int major; int result; } ;
typedef TYPE_1__ preset_import_context_t ;
typedef int preset_do_context_t ;
typedef int hb_value_t ;


 int PRESET_DO_NEXT ;
 int preset_import (int *,int ,int ,int ) ;

__attribute__((used)) static int do_preset_import(hb_value_t *preset, preset_do_context_t *do_ctx)
{
    preset_import_context_t *ctx = (preset_import_context_t*)do_ctx;
    ctx->result |= preset_import(preset, ctx->major, ctx->minor, ctx->micro);
    return PRESET_DO_NEXT;
}
