
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESnormal ;
 size_t gc_numpars ;
 int* gc_par ;
 int gc_relative_origin ;
 int gc_vt100state ;
 int gc_wrap_mode ;

__attribute__((used)) static void
gc_putc_askcmd(unsigned char ch)
{
 if (ch >= '0' && ch <= '9') {
  gc_par[gc_numpars] = (10*gc_par[gc_numpars]) + (ch-'0');
  return;
 }
 gc_vt100state = ESnormal;

 switch (gc_par[0]) {
  case 6:
   gc_relative_origin = ch == 'h';
   break;
  case 7:
   gc_wrap_mode = ch == 'h';
   break;
  default:
   break;
 }

}
