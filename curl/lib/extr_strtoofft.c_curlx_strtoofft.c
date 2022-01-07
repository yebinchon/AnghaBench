
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int curl_off_t ;
typedef int CURLofft ;


 int CURL_OFFT_FLOW ;
 int CURL_OFFT_INVAL ;
 int CURL_OFFT_OK ;
 scalar_t__ ERANGE ;
 scalar_t__ ISSPACE (char const) ;
 scalar_t__ errno ;
 int strtooff (char const*,char**,int) ;

CURLofft curlx_strtoofft(const char *str, char **endp, int base,
                         curl_off_t *num)
{
  char *end;
  curl_off_t number;
  errno = 0;
  *num = 0;

  while(*str && ISSPACE(*str))
    str++;
  if('-' == *str) {
    if(endp)
      *endp = (char *)str;
    return CURL_OFFT_INVAL;
  }
  number = strtooff(str, &end, base);
  if(endp)
    *endp = end;
  if(errno == ERANGE)

    return CURL_OFFT_FLOW;
  else if(str == end)

    return CURL_OFFT_INVAL;

  *num = number;
  return CURL_OFFT_OK;
}
