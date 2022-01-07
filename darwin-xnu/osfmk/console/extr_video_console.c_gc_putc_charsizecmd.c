
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int v_rows; unsigned int v_columns; } ;


 int ATTR_NONE ;
 int ESnormal ;
 int gc_paint_char (unsigned int,unsigned int,char,int ) ;
 int gc_vt100state ;
 TYPE_1__ vinfo ;

__attribute__((used)) static void
gc_putc_charsizecmd(unsigned char ch)
{
 gc_vt100state = ESnormal;

 switch (ch) {
  case '3' :
  case '4' :
  case '5' :
  case '6' :
   break;
  case '8' :
   {
    unsigned int xx, yy;
    for (yy = 0; yy < vinfo.v_rows; yy++)
     for (xx = 0; xx < vinfo.v_columns; xx++)
      gc_paint_char(xx, yy, 'E', ATTR_NONE);
   }
   break;
 }

}
