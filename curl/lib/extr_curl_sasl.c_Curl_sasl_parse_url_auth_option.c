
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SASL {unsigned int prefmech; scalar_t__ resetprefs; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_URL_MALFORMAT ;
 unsigned int Curl_sasl_decode_mech (char const*,size_t,size_t*) ;
 scalar_t__ FALSE ;
 unsigned int SASL_AUTH_DEFAULT ;
 unsigned int SASL_AUTH_NONE ;
 int strncmp (char const*,char*,size_t) ;

CURLcode Curl_sasl_parse_url_auth_option(struct SASL *sasl,
                                         const char *value, size_t len)
{
  CURLcode result = CURLE_OK;
  size_t mechlen;

  if(!len)
    return CURLE_URL_MALFORMAT;

  if(sasl->resetprefs) {
    sasl->resetprefs = FALSE;
    sasl->prefmech = SASL_AUTH_NONE;
  }

  if(!strncmp(value, "*", len))
    sasl->prefmech = SASL_AUTH_DEFAULT;
  else {
    unsigned int mechbit = Curl_sasl_decode_mech(value, len, &mechlen);
    if(mechbit && mechlen == len)
      sasl->prefmech |= mechbit;
    else
      result = CURLE_URL_MALFORMAT;
  }

  return result;
}
