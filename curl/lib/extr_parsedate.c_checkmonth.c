
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** Curl_month ;
 int FALSE ;
 int TRUE ;
 scalar_t__ strcasecompare (char const*,char const* const) ;

__attribute__((used)) static int checkmonth(const char *check)
{
  int i;
  const char * const *what;
  bool found = FALSE;

  what = &Curl_month[0];
  for(i = 0; i<12; i++) {
    if(strcasecompare(check, what[0])) {
      found = TRUE;
      break;
    }
    what++;
  }
  return found?i:-1;
}
