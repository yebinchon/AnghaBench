
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int renderer; } ;


 int PAHW_32X ;
 int PDF_8BIT ;
 int PDF_NONE ;
 int PDF_RGB555 ;
 int POPT_ALT_RENDERER ;
 int PicoAHW ;
 int PicoDraw2FB ;
 int PicoDrawSetOutBuf (int ,int) ;
 int PicoDrawSetOutFormat (int ,int ) ;
 int PicoOpt ;



 TYPE_1__ currentConfig ;
 int g_screen_ptr ;
 int g_screen_width ;

__attribute__((used)) static void apply_renderer(void)
{
 switch (currentConfig.renderer) {
 case 130:
  PicoOpt &= ~POPT_ALT_RENDERER;
  PicoDrawSetOutFormat(PDF_RGB555, 0);
  PicoDrawSetOutBuf(g_screen_ptr, g_screen_width * 2);
  break;
 case 129:
  PicoOpt &= ~POPT_ALT_RENDERER;
  PicoDrawSetOutFormat(PDF_8BIT, 0);
  PicoDrawSetOutBuf(PicoDraw2FB + 8, 328);
  break;
 case 128:
  PicoOpt |= POPT_ALT_RENDERER;
  PicoDrawSetOutFormat(PDF_NONE, 0);
  break;
 }

 if (PicoAHW & PAHW_32X)
  PicoDrawSetOutBuf(g_screen_ptr, g_screen_width * 2);
}
