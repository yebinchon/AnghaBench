
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESask ;
 int ESgotpars ;
 int ESnormal ;
 int MAXPARS ;
 int gc_numpars ;
 int* gc_par ;
 int gc_putc_gotpars (unsigned char) ;
 int gc_vt100state ;

__attribute__((used)) static void
gc_putc_getpars(unsigned char ch)
{
 if (ch == '?') {
  gc_vt100state = ESask;
  return;
 }
 if (ch == '[') {
  gc_vt100state = ESnormal;

  return;
 }
 if (ch == ';' && gc_numpars < MAXPARS - 1) {
  gc_numpars++;
 } else
  if (ch >= '0' && ch <= '9') {
   gc_par[gc_numpars] *= 10;
   gc_par[gc_numpars] += ch - '0';
  } else {
   gc_numpars++;
   gc_vt100state = ESgotpars;
   gc_putc_gotpars(ch);
  }
}
