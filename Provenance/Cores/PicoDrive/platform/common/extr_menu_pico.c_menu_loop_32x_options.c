
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int msh2_khz; } ;


 int MA_32XOPT_RENDERER ;
 int Pico32xSetClocks (int,int) ;
 TYPE_1__ currentConfig ;
 int e_menu_32x_options ;
 int me_enable (int ,int ,int ) ;
 int me_loop (int ,int*) ;
 int ** renderer_names32x ;

__attribute__((used)) static int menu_loop_32x_options(int id, int keys)
{
 static int sel = 0;

 me_enable(e_menu_32x_options, MA_32XOPT_RENDERER, renderer_names32x[0] != ((void*)0));
 me_loop(e_menu_32x_options, &sel);

 Pico32xSetClocks(currentConfig.msh2_khz * 1000, currentConfig.msh2_khz * 1000);

 return 0;
}
