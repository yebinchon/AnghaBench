
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int prefmech; int resetprefs; } ;
struct imap_conn {int preftype; TYPE_2__ sasl; } ;
struct TYPE_3__ {struct imap_conn imapc; } ;
struct connectdata {char* options; TYPE_1__ proto; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_URL_MALFORMAT ;
 int Curl_sasl_parse_url_auth_option (TYPE_2__*,char const*,int) ;
 int IMAP_TYPE_ANY ;
 int IMAP_TYPE_NONE ;
 int IMAP_TYPE_SASL ;


 int TRUE ;
 scalar_t__ strncasecompare (char const*,char*,int) ;

__attribute__((used)) static CURLcode imap_parse_url_options(struct connectdata *conn)
{
  CURLcode result = CURLE_OK;
  struct imap_conn *imapc = &conn->proto.imapc;
  const char *ptr = conn->options;

  imapc->sasl.resetprefs = TRUE;

  while(!result && ptr && *ptr) {
    const char *key = ptr;
    const char *value;

    while(*ptr && *ptr != '=')
        ptr++;

    value = ptr + 1;

    while(*ptr && *ptr != ';')
      ptr++;

    if(strncasecompare(key, "AUTH=", 5))
      result = Curl_sasl_parse_url_auth_option(&imapc->sasl,
                                               value, ptr - value);
    else
      result = CURLE_URL_MALFORMAT;

    if(*ptr == ';')
      ptr++;
  }

  switch(imapc->sasl.prefmech) {
  case 128:
    imapc->preftype = IMAP_TYPE_NONE;
    break;
  case 129:
    imapc->preftype = IMAP_TYPE_ANY;
    break;
  default:
    imapc->preftype = IMAP_TYPE_SASL;
    break;
  }

  return result;
}
