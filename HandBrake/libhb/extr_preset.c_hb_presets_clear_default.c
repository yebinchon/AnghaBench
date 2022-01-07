
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int depth; } ;
struct TYPE_5__ {TYPE_1__ path; } ;
typedef TYPE_2__ preset_do_context_t ;


 int do_clear_default ;
 int hb_presets ;
 int presets_do (int ,int ,TYPE_2__*) ;

void hb_presets_clear_default()
{
    preset_do_context_t ctx;
    ctx.path.depth = 1;
    presets_do(do_clear_default, hb_presets, &ctx);
}
