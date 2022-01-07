
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESgetpars ;
 int MAXPARS ;
 scalar_t__ gc_numpars ;
 scalar_t__* gc_par ;
 int gc_putc_getpars (unsigned char) ;
 int gc_vt100state ;

__attribute__((used)) static void
gc_putc_square(unsigned char ch)
{
 int i;

 for (i = 0; i < MAXPARS; i++) {
  gc_par[i] = 0;
 }

 gc_numpars = 0;
 gc_vt100state = ESgetpars;

 gc_putc_getpars(ch);

}
