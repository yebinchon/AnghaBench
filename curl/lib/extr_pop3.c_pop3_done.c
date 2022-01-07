
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connectdata {struct Curl_easy* data; } ;
struct POP3 {int transfer; int custom; int id; } ;
struct TYPE_2__ {struct POP3* protop; } ;
struct Curl_easy {TYPE_1__ req; } ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 int Curl_safefree (int ) ;
 int FTPTRANSFER_BODY ;
 int connclose (struct connectdata*,char*) ;

__attribute__((used)) static CURLcode pop3_done(struct connectdata *conn, CURLcode status,
                          bool premature)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;
  struct POP3 *pop3 = data->req.protop;

  (void)premature;

  if(!pop3)
    return CURLE_OK;

  if(status) {
    connclose(conn, "POP3 done with bad status");
    result = status;
  }


  Curl_safefree(pop3->id);
  Curl_safefree(pop3->custom);


  pop3->transfer = FTPTRANSFER_BODY;

  return result;
}
