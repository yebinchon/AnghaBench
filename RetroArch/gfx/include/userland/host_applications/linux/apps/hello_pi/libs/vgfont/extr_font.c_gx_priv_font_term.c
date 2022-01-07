
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mem; } ;


 TYPE_1__ default_font ;
 int gx_font_cache_flush () ;
 int vcos_free (int ) ;
 int vgft_term () ;

void gx_priv_font_term(void)
{
   gx_font_cache_flush();
   vgft_term();
   vcos_free(default_font.mem);
}
