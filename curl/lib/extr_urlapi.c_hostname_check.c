
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Curl_URL {int zoneid; } ;
typedef int CURLUcode ;


 int AF_INET6 ;
 int CURLUE_MALFORMED_INPUT ;
 int CURLUE_NO_HOST ;
 int CURLUE_OK ;
 int CURLUE_OUT_OF_MEMORY ;
 int Curl_inet_pton (int ,char*,char*) ;
 size_t strcspn (char*,char*) ;
 int strdup (char*) ;
 size_t strlen (char*) ;
 int strncmp (char*,char*,int) ;
 size_t strspn (char*,char const*) ;

__attribute__((used)) static CURLUcode hostname_check(struct Curl_URL *u, char *hostname)
{
  size_t len;
  size_t hlen = strlen(hostname);

  if(hostname[0] == '[') {



    const char *l = "0123456789abcdefABCDEF:.";
    if(hlen < 5)
      return CURLUE_MALFORMED_INPUT;
    hostname++;
    hlen -= 2;

    if(hostname[hlen] != ']')
      return CURLUE_MALFORMED_INPUT;


    len = strspn(hostname, l);
    if(hlen != len) {
      hlen = len;
      if(hostname[len] == '%') {

        char zoneid[16];
        int i = 0;
        char *h = &hostname[len + 1];

        if(!strncmp(h, "25", 2) && h[2] && (h[2] != ']'))
          h += 2;
        while(*h && (*h != ']') && (i < 15))
          zoneid[i++] = *h++;
        if(!i || (']' != *h))
          return CURLUE_MALFORMED_INPUT;
        zoneid[i] = 0;
        u->zoneid = strdup(zoneid);
        if(!u->zoneid)
          return CURLUE_OUT_OF_MEMORY;
        hostname[len] = ']';
        hostname[len + 1] = 0;
      }
      else
        return CURLUE_MALFORMED_INPUT;

    }






  }
  else {

    len = strcspn(hostname, " ");
    if(hlen != len)

      return CURLUE_MALFORMED_INPUT;
  }
  if(!hostname[0])
    return CURLUE_NO_HOST;
  return CURLUE_OK;
}
