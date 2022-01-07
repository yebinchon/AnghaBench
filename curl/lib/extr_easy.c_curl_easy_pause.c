
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tempbuf {int * buf; int len; int type; } ;
struct connectdata {struct Curl_easy* data; } ;
struct SingleRequest {int keepon; } ;
struct TYPE_2__ {unsigned int tempcount; int done; struct tempbuf* tempwrite; } ;
struct Curl_easy {TYPE_1__ state; scalar_t__ multi; struct connectdata* conn; struct SingleRequest req; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLPAUSE_RECV ;
 int CURLPAUSE_SEND ;
 int Curl_client_write (struct connectdata*,int ,int *,int ) ;
 int Curl_expire (struct Curl_easy*,int ,int ) ;
 int Curl_update_timer (scalar_t__) ;
 int Curl_updatesocket (struct Curl_easy*) ;
 int EXPIRE_RUN_NOW ;
 int KEEP_RECV_PAUSE ;
 int KEEP_SEND_PAUSE ;
 int free (int *) ;

CURLcode curl_easy_pause(struct Curl_easy *data, int action)
{
  struct SingleRequest *k = &data->req;
  CURLcode result = CURLE_OK;


  int newstate = k->keepon &~ (KEEP_RECV_PAUSE| KEEP_SEND_PAUSE);


  newstate |= ((action & CURLPAUSE_RECV)?KEEP_RECV_PAUSE:0) |
    ((action & CURLPAUSE_SEND)?KEEP_SEND_PAUSE:0);


  k->keepon = newstate;

  if(!(newstate & KEEP_RECV_PAUSE) && data->state.tempcount) {


    unsigned int i;
    unsigned int count = data->state.tempcount;
    struct tempbuf writebuf[3];
    struct connectdata *conn = data->conn;
    struct Curl_easy *saved_data = ((void*)0);


    for(i = 0; i < data->state.tempcount; i++) {
      writebuf[i] = data->state.tempwrite[i];
      data->state.tempwrite[i].buf = ((void*)0);
    }
    data->state.tempcount = 0;


    if(conn->data != data) {
      saved_data = conn->data;
      conn->data = data;
    }

    for(i = 0; i < count; i++) {


      if(!result)
        result = Curl_client_write(conn, writebuf[i].type, writebuf[i].buf,
                                   writebuf[i].len);
      free(writebuf[i].buf);
    }


    if(saved_data)
      conn->data = saved_data;

    if(result)
      return result;
  }



  if((newstate & (KEEP_RECV_PAUSE|KEEP_SEND_PAUSE)) !=
     (KEEP_RECV_PAUSE|KEEP_SEND_PAUSE)) {
    Curl_expire(data, 0, EXPIRE_RUN_NOW);
    if(data->multi)
      Curl_update_timer(data->multi);
  }

  if(!data->state.done)


    Curl_updatesocket(data);

  return result;
}
