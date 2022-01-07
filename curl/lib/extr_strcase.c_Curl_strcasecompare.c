
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Curl_raw_toupper (char const) ;

int Curl_strcasecompare(const char *first, const char *second)
{
  while(*first && *second) {
    if(Curl_raw_toupper(*first) != Curl_raw_toupper(*second))

      break;
    first++;
    second++;
  }



  return (Curl_raw_toupper(*first) == Curl_raw_toupper(*second));
}
