
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ v_columns; scalar_t__ v_rows; } ;
 int gc_putc_askcmd (char) ;
 int gc_putc_charsetcmd (int,char) ;
 int gc_putc_charsizecmd (char) ;
 int gc_putc_esc (char) ;
 int gc_putc_getpars (char) ;
 int gc_putc_gotpars (char) ;
 int gc_putc_normal (char) ;
 int gc_putc_square (char) ;
 int gc_vt100state ;
 scalar_t__ gc_x ;
 scalar_t__ gc_y ;
 TYPE_1__ vinfo ;

__attribute__((used)) static void
gc_putchar(char ch)
{
 if (!ch) {
  return;
 }
 switch (gc_vt100state) {
  default:gc_vt100state = 131;
 case 131:
  gc_putc_normal(ch);
  break;
 case 134:
  gc_putc_esc(ch);
  break;
 case 128:
  gc_putc_square(ch);
  break;
 case 133:
  gc_putc_getpars(ch);
  break;
 case 132:
  gc_putc_gotpars(ch);
  break;
 case 136:
  gc_putc_askcmd(ch);
  break;
 case 135:
  gc_putc_charsizecmd(ch);
  break;
 case 130:
  gc_putc_charsetcmd(0, ch);
  break;
 case 129:
  gc_putc_charsetcmd(1, ch);
  break;
 }

 if (gc_x >= vinfo.v_columns) {
  if (0 == vinfo.v_columns)
   gc_x = 0;
  else
   gc_x = vinfo.v_columns - 1;
 }
 if (gc_y >= vinfo.v_rows) {
  if (0 == vinfo.v_rows)
   gc_y = 0;
  else
   gc_y = vinfo.v_rows - 1;
 }
}
