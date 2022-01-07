
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uInt ;
struct TYPE_3__ {int exop; int bits; int base; } ;
typedef TYPE_1__ inflate_huft ;


 int exit (int) ;
 int fprintf (int ,char*) ;
 int printf (char*,...) ;
 int putchar (char) ;
 int puts (char*) ;
 int stderr ;

void maketree(uInt b, inflate_huft *t)
{
  int i, e;

  i = 0;
  while (1)
  {
    e = t[i].exop;
    if (e && (e & (16+64)) == 0)
    {
      fprintf(stderr, "maketree: cannot initialize sub-tables!\n");
      exit(1);
    }
    if (i % 4 == 0)
      printf("\n   ");
    printf(" {{{%u,%u}},%u}", t[i].exop, t[i].bits, t[i].base);
    if (++i == (1<<b))
      break;
    putchar(',');
  }
  puts("");
}
