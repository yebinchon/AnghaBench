
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** Curl_wkday ;
 int FALSE ;
 int TRUE ;
 scalar_t__ strcasecompare (char const*,char const* const) ;
 char** weekday ;

__attribute__((used)) static int checkday(const char *check, size_t len)
{
  int i;
  const char * const *what;
  bool found = FALSE;
  if(len > 3)
    what = &weekday[0];
  else
    what = &Curl_wkday[0];
  for(i = 0; i<7; i++) {
    if(strcasecompare(check, what[0])) {
      found = TRUE;
      break;
    }
    what++;
  }
  return found?i:-1;
}
