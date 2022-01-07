
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Curl_easy {int dummy; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 int CURLE_URL_MALFORMAT ;
 int Curl_convert_from_network (struct Curl_easy*,char*,int) ;
 scalar_t__ ISXDIGIT (char const) ;
 unsigned char curlx_ultouc (unsigned long) ;
 int free (char*) ;
 char* malloc (size_t) ;
 size_t strlen (char const*) ;
 unsigned long strtoul (char*,char**,int) ;

CURLcode Curl_urldecode(struct Curl_easy *data,
                        const char *string, size_t length,
                        char **ostring, size_t *olen,
                        bool reject_ctrl)
{
  size_t alloc = (length?length:strlen(string)) + 1;
  char *ns = malloc(alloc);
  size_t strindex = 0;
  unsigned long hex;
  CURLcode result = CURLE_OK;

  if(!ns)
    return CURLE_OUT_OF_MEMORY;

  while(--alloc > 0) {
    unsigned char in = *string;
    if(('%' == in) && (alloc > 2) &&
       ISXDIGIT(string[1]) && ISXDIGIT(string[2])) {

      char hexstr[3];
      char *ptr;
      hexstr[0] = string[1];
      hexstr[1] = string[2];
      hexstr[2] = 0;

      hex = strtoul(hexstr, &ptr, 16);

      in = curlx_ultouc(hex);

      if(data) {
        result = Curl_convert_from_network(data, (char *)&in, 1);
        if(result) {

          free(ns);
          return result;
        }
      }

      string += 2;
      alloc -= 2;
    }

    if(reject_ctrl && (in < 0x20)) {
      free(ns);
      return CURLE_URL_MALFORMAT;
    }

    ns[strindex++] = in;
    string++;
  }
  ns[strindex] = 0;

  if(olen)

    *olen = strindex;


  *ostring = ns;

  return CURLE_OK;
}
