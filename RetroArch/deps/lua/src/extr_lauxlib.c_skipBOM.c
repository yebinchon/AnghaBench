
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* buff; int f; scalar_t__ n; } ;
typedef TYPE_1__ LoadF ;


 int EOF ;
 int getc (int ) ;

__attribute__((used)) static int skipBOM (LoadF *lf) {
  const char *p = "\xEF\xBB\xBF";
  int c;
  lf->n = 0;
  do {
    c = getc(lf->f);
    if (c == EOF || c != *(const unsigned char *)p++) return c;
    lf->buff[lf->n++] = c;
  } while (*p != '\0');
  lf->n = 0;
  return getc(lf->f);
}
