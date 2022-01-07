
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int MB_CUR_MAX ;
 int assert (int) ;
 int countPrefixOnes (char const) ;
 int mbtowc (int *,char const*,int ) ;
 int wcwidth (int ) ;

void getPrevCharSize(const char *str, int pos, int *size, int *width) {
  assert(pos > 0);

  wchar_t wc;
  *size = 0;
  *width = 0;

  while (--pos >= 0) {
    *size += 1;

    if (str[pos] > 0 || countPrefixOnes(str[pos]) > 1) break;
  }

  int rc = mbtowc(&wc, str + pos, MB_CUR_MAX);
  assert(rc == *size);

  *width = wcwidth(wc);
}
