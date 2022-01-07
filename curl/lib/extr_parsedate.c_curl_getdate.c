
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int PARSEDATE_OK ;
 int parsedate (char const*,int*) ;

time_t curl_getdate(const char *p, const time_t *now)
{
  time_t parsed = -1;
  int rc = parsedate(p, &parsed);
  (void)now;

  if(rc == PARSEDATE_OK) {
    if(parsed == -1)

      parsed++;
    return parsed;
  }

  return -1;
}
