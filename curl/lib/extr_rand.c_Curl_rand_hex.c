
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Curl_easy {int dummy; } ;
typedef int buffer ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_BAD_FUNCTION_ARGUMENT ;
 scalar_t__ Curl_rand (struct Curl_easy*,unsigned char*,size_t) ;
 int DEBUGASSERT (int) ;
 int memset (unsigned char*,int ,int) ;

CURLcode Curl_rand_hex(struct Curl_easy *data, unsigned char *rnd,
                       size_t num)
{
  CURLcode result = CURLE_BAD_FUNCTION_ARGUMENT;
  const char *hex = "0123456789abcdef";
  unsigned char buffer[128];
  unsigned char *bufp = buffer;
  DEBUGASSERT(num > 1);







  if((num/2 >= sizeof(buffer)) || !(num&1))

    return CURLE_BAD_FUNCTION_ARGUMENT;

  num--;

  result = Curl_rand(data, buffer, num/2);
  if(result)
    return result;

  while(num) {


    *rnd++ = hex[(*bufp & 0xF0)>>4];
    *rnd++ = hex[*bufp & 0x0F];
    bufp++;
    num -= 2;
  }
  *rnd = 0;

  return result;
}
