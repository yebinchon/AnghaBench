
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int MB_CUR_MAX ;
 int assert (int) ;
 int mbtowc (int *,char const*,int ) ;
 int wcwidth (int ) ;

void getNextCharSize(const char *str, int pos, int *size, int *width) {
  assert(pos >= 0);

  wchar_t wc;
  *size = mbtowc(&wc, str + pos, MB_CUR_MAX);
  *width = wcwidth(wc);
}
