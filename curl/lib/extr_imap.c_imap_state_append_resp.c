
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connectdata {struct Curl_easy* data; } ;
struct TYPE_2__ {int infilesize; } ;
struct Curl_easy {TYPE_1__ state; } ;
typedef int imapstate ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_UPLOAD_FAILED ;
 int Curl_pgrsSetUploadSize (struct Curl_easy*,int ) ;
 int Curl_setup_transfer (struct Curl_easy*,int,int,int ,int ) ;
 int FALSE ;
 int FIRSTSOCKET ;
 int IMAP_STOP ;
 int state (struct connectdata*,int ) ;

__attribute__((used)) static CURLcode imap_state_append_resp(struct connectdata *conn, int imapcode,
                                       imapstate instate)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;

  (void)instate;

  if(imapcode != '+') {
    result = CURLE_UPLOAD_FAILED;
  }
  else {

    Curl_pgrsSetUploadSize(data, data->state.infilesize);


    Curl_setup_transfer(data, -1, -1, FALSE, FIRSTSOCKET);


    state(conn, IMAP_STOP);
  }

  return result;
}
