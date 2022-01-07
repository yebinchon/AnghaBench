
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fputs (char const*,int *) ;

__attribute__((used)) static char *outs(const char *str, FILE *f, char *bp) {
 if (f)
  fputs(str, f);
 else
  while (*bp = *str++)
   bp++;
 return bp;
}
