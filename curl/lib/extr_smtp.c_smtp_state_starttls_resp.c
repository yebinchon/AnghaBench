
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connectdata {struct Curl_easy* data; } ;
struct TYPE_2__ {scalar_t__ use_ssl; } ;
struct Curl_easy {TYPE_1__ set; } ;
typedef int smtpstate ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_USE_SSL_FAILED ;
 scalar_t__ CURLUSESSL_TRY ;
 int failf (struct Curl_easy*,char*,int) ;
 int smtp_perform_authentication (struct connectdata*) ;
 int smtp_perform_upgrade_tls (struct connectdata*) ;

__attribute__((used)) static CURLcode smtp_state_starttls_resp(struct connectdata *conn,
                                         int smtpcode,
                                         smtpstate instate)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;

  (void)instate;

  if(smtpcode != 220) {
    if(data->set.use_ssl != CURLUSESSL_TRY) {
      failf(data, "STARTTLS denied, code %d", smtpcode);
      result = CURLE_USE_SSL_FAILED;
    }
    else
      result = smtp_perform_authentication(conn);
  }
  else
    result = smtp_perform_upgrade_tls(conn);

  return result;
}
