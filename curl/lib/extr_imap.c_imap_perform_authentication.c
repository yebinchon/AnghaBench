
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct imap_conn {int preftype; int login_disabled; int ir_supported; int sasl; scalar_t__ preauth; } ;
struct TYPE_2__ {struct imap_conn imapc; } ;
struct connectdata {int data; TYPE_1__ proto; } ;
typedef scalar_t__ saslprogress ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_LOGIN_DENIED ;
 scalar_t__ CURLE_OK ;
 int Curl_sasl_can_authenticate (int *,struct connectdata*) ;
 scalar_t__ Curl_sasl_start (int *,struct connectdata*,int ,scalar_t__*) ;
 int IMAP_AUTHENTICATE ;
 int IMAP_STOP ;
 int IMAP_TYPE_CLEARTEXT ;
 scalar_t__ SASL_INPROGRESS ;
 scalar_t__ imap_perform_login (struct connectdata*) ;
 int infof (int ,char*) ;
 int state (struct connectdata*,int ) ;

__attribute__((used)) static CURLcode imap_perform_authentication(struct connectdata *conn)
{
  CURLcode result = CURLE_OK;
  struct imap_conn *imapc = &conn->proto.imapc;
  saslprogress progress;



  if(imapc->preauth ||
     !Curl_sasl_can_authenticate(&imapc->sasl, conn)) {
    state(conn, IMAP_STOP);
    return result;
  }


  result = Curl_sasl_start(&imapc->sasl, conn, imapc->ir_supported, &progress);

  if(!result) {
    if(progress == SASL_INPROGRESS)
      state(conn, IMAP_AUTHENTICATE);
    else if(!imapc->login_disabled && (imapc->preftype & IMAP_TYPE_CLEARTEXT))

      result = imap_perform_login(conn);
    else {

      infof(conn->data, "No known authentication mechanisms supported!\n");
      result = CURLE_LOGIN_DENIED;
    }
  }

  return result;
}
