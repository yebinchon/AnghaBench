
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int prefmech; int resetprefs; } ;
struct pop3_conn {scalar_t__ preftype; TYPE_2__ sasl; } ;
struct TYPE_3__ {struct pop3_conn pop3c; } ;
struct connectdata {char* options; TYPE_1__ proto; } ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 scalar_t__ CURLE_URL_MALFORMAT ;
 scalar_t__ Curl_sasl_parse_url_auth_option (TYPE_2__*,char const*,int) ;
 scalar_t__ POP3_TYPE_ANY ;
 scalar_t__ POP3_TYPE_APOP ;
 scalar_t__ POP3_TYPE_NONE ;
 scalar_t__ POP3_TYPE_SASL ;


 int TRUE ;
 scalar_t__ strncasecompare (char const*,char*,int) ;

__attribute__((used)) static CURLcode pop3_parse_url_options(struct connectdata *conn)
{
  CURLcode result = CURLE_OK;
  struct pop3_conn *pop3c = &conn->proto.pop3c;
  const char *ptr = conn->options;

  pop3c->sasl.resetprefs = TRUE;

  while(!result && ptr && *ptr) {
    const char *key = ptr;
    const char *value;

    while(*ptr && *ptr != '=')
        ptr++;

    value = ptr + 1;

    while(*ptr && *ptr != ';')
      ptr++;

    if(strncasecompare(key, "AUTH=", 5)) {
      result = Curl_sasl_parse_url_auth_option(&pop3c->sasl,
                                               value, ptr - value);

      if(result && strncasecompare(value, "+APOP", ptr - value)) {
        pop3c->preftype = POP3_TYPE_APOP;
        pop3c->sasl.prefmech = 128;
        result = CURLE_OK;
      }
    }
    else
      result = CURLE_URL_MALFORMAT;

    if(*ptr == ';')
      ptr++;
  }

  if(pop3c->preftype != POP3_TYPE_APOP)
    switch(pop3c->sasl.prefmech) {
    case 128:
      pop3c->preftype = POP3_TYPE_NONE;
      break;
    case 129:
      pop3c->preftype = POP3_TYPE_ANY;
      break;
    default:
      pop3c->preftype = POP3_TYPE_SASL;
      break;
    }

  return result;
}
