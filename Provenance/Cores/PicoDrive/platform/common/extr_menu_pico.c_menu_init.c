
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int enabled; char* name; int * data; } ;
struct TYPE_7__ {int * cpu_clock_set; int * gamma_set; int * hwfilters; int * vout_methods; } ;


 int MA_OPT2_DYNARECS ;
 int MA_OPT2_GAMMA ;
 int MA_OPT3_FILTERING ;
 int MA_OPT_CPU_CLOCKS ;
 int MA_OPT_VOUT_MODE ;
 TYPE_2__* e_menu_adv_options ;
 TYPE_2__* e_menu_gfx_options ;
 TYPE_2__* e_menu_options ;
 int me_enable (TYPE_2__*,int ,int) ;
 int me_id2offset (TYPE_2__*,int ) ;
 int menu_init_base () ;
 TYPE_1__ plat_target ;

void menu_init(void)
{
 int i;

 menu_init_base();

 i = 0;



 me_enable(e_menu_adv_options, MA_OPT2_DYNARECS, i);

 i = me_id2offset(e_menu_gfx_options, MA_OPT_VOUT_MODE);
 e_menu_gfx_options[i].data = plat_target.vout_methods;
 me_enable(e_menu_gfx_options, MA_OPT_VOUT_MODE,
  plat_target.vout_methods != ((void*)0));

 i = me_id2offset(e_menu_gfx_options, MA_OPT3_FILTERING);
 e_menu_gfx_options[i].data = plat_target.hwfilters;
 me_enable(e_menu_gfx_options, MA_OPT3_FILTERING,
  plat_target.hwfilters != ((void*)0));

 me_enable(e_menu_gfx_options, MA_OPT2_GAMMA,
                plat_target.gamma_set != ((void*)0));

 i = me_id2offset(e_menu_options, MA_OPT_CPU_CLOCKS);
 e_menu_options[i].enabled = 0;
 if (plat_target.cpu_clock_set != ((void*)0)) {
  e_menu_options[i].name = "CPU clock";
  e_menu_options[i].enabled = 1;
 }
}
