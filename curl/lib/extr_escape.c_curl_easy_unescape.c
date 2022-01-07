
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Curl_easy {int dummy; } ;
typedef scalar_t__ CURLcode ;


 int Curl_safefree (char*) ;
 scalar_t__ Curl_urldecode (struct Curl_easy*,char const*,size_t,char**,size_t*,int ) ;
 int FALSE ;
 scalar_t__ INT_MAX ;
 int curlx_uztosi (size_t) ;

char *curl_easy_unescape(struct Curl_easy *data, const char *string,
                         int length, int *olen)
{
  char *str = ((void*)0);
  if(length >= 0) {
    size_t inputlen = length;
    size_t outputlen;
    CURLcode res = Curl_urldecode(data, string, inputlen, &str, &outputlen,
                                  FALSE);
    if(res)
      return ((void*)0);

    if(olen) {
      if(outputlen <= (size_t) INT_MAX)
        *olen = curlx_uztosi(outputlen);
      else

        Curl_safefree(str);
    }
  }
  return str;
}
