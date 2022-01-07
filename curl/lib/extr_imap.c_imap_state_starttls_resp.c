
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connectdata {struct Curl_easy* data; } ;
struct TYPE_2__ {scalar_t__ use_ssl; } ;
struct Curl_easy {TYPE_1__ set; } ;
typedef int imapstate ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_USE_SSL_FAILED ;
 scalar_t__ CURLUSESSL_TRY ;
 int IMAP_RESP_OK ;
 int failf (struct Curl_easy*,char*) ;
 int imap_perform_authentication (struct connectdata*) ;
 int imap_perform_upgrade_tls (struct connectdata*) ;

__attribute__((used)) static CURLcode imap_state_starttls_resp(struct connectdata *conn,
                                         int imapcode,
                                         imapstate instate)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;

  (void)instate;

  if(imapcode != IMAP_RESP_OK) {
    if(data->set.use_ssl != CURLUSESSL_TRY) {
      failf(data, "STARTTLS denied");
      result = CURLE_USE_SSL_FAILED;
    }
    else
      result = imap_perform_authentication(conn);
  }
  else
    result = imap_perform_upgrade_tls(conn);

  return result;
}
