
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stderr ;

void usage()
{
  fprintf (stderr, "PNG2PNM\n");
  fprintf (stderr, "   by Willem van Schaik, 1999\n");



  fprintf (stderr, "   for Linux (and Unix) compilers\n");

  fprintf (stderr, "Usage:  png2pnm [options] <file>.png [<file>.pnm]\n");
  fprintf (stderr, "   or:  ... | png2pnm [options]\n");
  fprintf (stderr, "Options:\n");
  fprintf (stderr,
     "   -r[aw]   write pnm-file in binary format (P4/P5/P6) (default)\n");
  fprintf (stderr, "   -n[oraw] write pnm-file in ascii format (P1/P2/P3)\n");
  fprintf (stderr,
     "   -a[lpha] <file>.pgm write PNG alpha channel as pgm-file\n");
  fprintf (stderr, "   -h | -?  print this help-information\n");
}
