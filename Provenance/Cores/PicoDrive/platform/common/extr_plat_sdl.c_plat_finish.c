
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int *) ;
 int * g_menubg_ptr ;
 int plat_sdl_finish () ;
 int * shadow_fb ;

void plat_finish(void)
{
 free(shadow_fb);
 shadow_fb = ((void*)0);
 free(g_menubg_ptr);
 g_menubg_ptr = ((void*)0);
 plat_sdl_finish();
}
