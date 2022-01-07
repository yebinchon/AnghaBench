
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rtp_channel; } ;
struct TYPE_5__ {TYPE_1__ rtspc; } ;
struct connectdata {TYPE_2__ proto; struct Curl_easy* data; } ;
struct TYPE_6__ {int rtsp_next_client_CSeq; int rtsp_next_server_CSeq; } ;
struct Curl_easy {TYPE_3__ state; } ;
typedef int CURLcode ;


 int Curl_http_connect (struct connectdata*,int*) ;

__attribute__((used)) static CURLcode rtsp_connect(struct connectdata *conn, bool *done)
{
  CURLcode httpStatus;
  struct Curl_easy *data = conn->data;

  httpStatus = Curl_http_connect(conn, done);


  if(data->state.rtsp_next_client_CSeq == 0)
    data->state.rtsp_next_client_CSeq = 1;
  if(data->state.rtsp_next_server_CSeq == 0)
    data->state.rtsp_next_server_CSeq = 1;

  conn->proto.rtspc.rtp_channel = -1;

  return httpStatus;
}
