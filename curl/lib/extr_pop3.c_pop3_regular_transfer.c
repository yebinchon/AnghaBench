
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connectdata {struct Curl_easy* data; } ;
struct TYPE_2__ {int size; } ;
struct Curl_easy {TYPE_1__ req; } ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 int Curl_pgrsSetDownloadCounter (struct Curl_easy*,int ) ;
 int Curl_pgrsSetDownloadSize (struct Curl_easy*,int) ;
 int Curl_pgrsSetUploadCounter (struct Curl_easy*,int ) ;
 int Curl_pgrsSetUploadSize (struct Curl_easy*,int) ;
 int FALSE ;
 scalar_t__ pop3_dophase_done (struct connectdata*,int) ;
 scalar_t__ pop3_perform (struct connectdata*,int*,int*) ;

__attribute__((used)) static CURLcode pop3_regular_transfer(struct connectdata *conn,
                                      bool *dophase_done)
{
  CURLcode result = CURLE_OK;
  bool connected = FALSE;
  struct Curl_easy *data = conn->data;


  data->req.size = -1;


  Curl_pgrsSetUploadCounter(data, 0);
  Curl_pgrsSetDownloadCounter(data, 0);
  Curl_pgrsSetUploadSize(data, -1);
  Curl_pgrsSetDownloadSize(data, -1);


  result = pop3_perform(conn, &connected, dophase_done);


  if(!result && *dophase_done)
    result = pop3_dophase_done(conn, connected);

  return result;
}
