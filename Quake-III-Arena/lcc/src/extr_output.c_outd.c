
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char* outs (char*,int *,char*) ;

__attribute__((used)) static char *outd(long n, FILE *f, char *bp) {
 unsigned long m;
 char buf[25], *s = buf + sizeof buf;

 *--s = '\0';
 if (n < 0)
  m = -n;
 else
  m = n;
 do
  *--s = m%10 + '0';
 while ((m /= 10) != 0);
 if (n < 0)
  *--s = '-';
 return outs(s, f, bp);
}
