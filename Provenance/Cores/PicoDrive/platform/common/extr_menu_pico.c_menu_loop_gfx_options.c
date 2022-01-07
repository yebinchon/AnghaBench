
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MA_OPT_RENDERER ;
 int e_menu_gfx_options ;
 int me_enable (int ,int ,int ) ;
 int me_loop (int ,int*) ;
 int ** renderer_names ;

__attribute__((used)) static int menu_loop_gfx_options(int id, int keys)
{
 static int sel = 0;

 me_enable(e_menu_gfx_options, MA_OPT_RENDERER, renderer_names[0] != ((void*)0));
 me_loop(e_menu_gfx_options, &sel);

 return 0;
}
