
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct imap_conn {int preauth; } ;
struct TYPE_2__ {struct imap_conn imapc; } ;
struct connectdata {TYPE_1__ proto; struct Curl_easy* data; } ;
struct Curl_easy {int dummy; } ;
typedef int imapstate ;
typedef int CURLcode ;


 int CURLE_WEIRD_SERVER_REPLY ;
 int IMAP_RESP_OK ;
 int IMAP_RESP_PREAUTH ;
 int TRUE ;
 int failf (struct Curl_easy*,char*) ;
 int imap_perform_capability (struct connectdata*) ;
 int infof (struct Curl_easy*,char*) ;

__attribute__((used)) static CURLcode imap_state_servergreet_resp(struct connectdata *conn,
                                            int imapcode,
                                            imapstate instate)
{
  struct Curl_easy *data = conn->data;
  (void)instate;

  if(imapcode == IMAP_RESP_PREAUTH) {

    struct imap_conn *imapc = &conn->proto.imapc;
    imapc->preauth = TRUE;
    infof(data, "PREAUTH connection, already authenticated!\n");
  }
  else if(imapcode != IMAP_RESP_OK) {
    failf(data, "Got unexpected imap-server response");
    return CURLE_WEIRD_SERVER_REPLY;
  }

  return imap_perform_capability(conn);
}
