
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connectdata {struct Curl_easy* data; } ;
struct TYPE_2__ {int infilesize; } ;
struct Curl_easy {TYPE_1__ state; } ;
typedef int smtpstate ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_SEND_ERROR ;
 int Curl_pgrsSetUploadSize (struct Curl_easy*,int ) ;
 int Curl_setup_transfer (struct Curl_easy*,int,int,int ,int ) ;
 int FALSE ;
 int FIRSTSOCKET ;
 int SMTP_STOP ;
 int failf (struct Curl_easy*,char*,int) ;
 int state (struct connectdata*,int ) ;

__attribute__((used)) static CURLcode smtp_state_data_resp(struct connectdata *conn, int smtpcode,
                                     smtpstate instate)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;

  (void)instate;

  if(smtpcode != 354) {
    failf(data, "DATA failed: %d", smtpcode);
    result = CURLE_SEND_ERROR;
  }
  else {

    Curl_pgrsSetUploadSize(data, data->state.infilesize);


    Curl_setup_transfer(data, -1, -1, FALSE, FIRSTSOCKET);


    state(conn, SMTP_STOP);
  }

  return result;
}
