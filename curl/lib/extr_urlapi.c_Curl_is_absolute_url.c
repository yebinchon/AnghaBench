
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 scalar_t__ ISALNUM (char) ;
 scalar_t__ STARTS_WITH_DRIVE_PREFIX (char const*) ;
 scalar_t__ TOLOWER (char) ;
 int TRUE ;

bool Curl_is_absolute_url(const char *url, char *buf, size_t buflen)
{
  size_t i;




  for(i = 0; i < buflen && url[i]; ++i) {
    char s = url[i];
    if((s == ':') && (url[i + 1] == '/')) {
      if(buf)
        buf[i] = 0;
      return TRUE;
    }



    else if(ISALNUM(s) || (s == '+') || (s == '-') || (s == '.') ) {
      if(buf)
        buf[i] = (char)TOLOWER(s);
    }
    else
      break;
  }
  return FALSE;
}
