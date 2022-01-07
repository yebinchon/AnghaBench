
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIGEST_MAX_CONTENT_LENGTH ;
 int DIGEST_MAX_VALUE_LENGTH ;
 int FALSE ;
 int TRUE ;

bool Curl_auth_digest_get_pair(const char *str, char *value, char *content,
                               const char **endptr)
{
  int c;
  bool starts_with_quote = FALSE;
  bool escape = FALSE;

  for(c = DIGEST_MAX_VALUE_LENGTH - 1; (*str && (*str != '=') && c--);)
    *value++ = *str++;
  *value = 0;

  if('=' != *str++)

    return FALSE;

  if('\"' == *str) {

    str++;
    starts_with_quote = TRUE;
  }

  for(c = DIGEST_MAX_CONTENT_LENGTH - 1; *str && c--; str++) {
    switch(*str) {
    case '\\':
      if(!escape) {

        escape = TRUE;
        *content++ = '\\';

        continue;
      }
      break;

    case ',':
      if(!starts_with_quote) {


        c = 0;
        continue;
      }
      break;

    case '\r':
    case '\n':

      c = 0;
      continue;

    case '\"':
      if(!escape && starts_with_quote) {

        c = 0;
        continue;
      }
      break;
    }

    escape = FALSE;
    *content++ = *str;
  }

  *content = 0;
  *endptr = str;

  return TRUE;
}
