
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int rtp_channel; } ;
struct TYPE_8__ {TYPE_3__ rtspc; } ;
struct connectdata {TYPE_4__ proto; struct Curl_easy* data; } ;
struct RTSP {long CSeq_sent; long CSeq_recv; } ;
struct TYPE_6__ {scalar_t__ rtspreq; } ;
struct TYPE_5__ {struct RTSP* protop; } ;
struct Curl_easy {TYPE_2__ set; TYPE_1__ req; } ;
typedef int CURLcode ;


 int CURLE_RTSP_CSEQ_ERROR ;
 int Curl_http_done (struct connectdata*,int ,int) ;
 scalar_t__ RTSPREQ_RECEIVE ;
 int TRUE ;
 int failf (struct Curl_easy*,char*,long,long) ;
 int infof (struct Curl_easy*,char*,long) ;

__attribute__((used)) static CURLcode rtsp_done(struct connectdata *conn,
                          CURLcode status, bool premature)
{
  struct Curl_easy *data = conn->data;
  struct RTSP *rtsp = data->req.protop;
  CURLcode httpStatus;


  if(data->set.rtspreq == RTSPREQ_RECEIVE)
    premature = TRUE;

  httpStatus = Curl_http_done(conn, status, premature);

  if(rtsp) {

    long CSeq_sent = rtsp->CSeq_sent;
    long CSeq_recv = rtsp->CSeq_recv;
    if((data->set.rtspreq != RTSPREQ_RECEIVE) && (CSeq_sent != CSeq_recv)) {
      failf(data,
            "The CSeq of this request %ld did not match the response %ld",
            CSeq_sent, CSeq_recv);
      return CURLE_RTSP_CSEQ_ERROR;
    }
    if(data->set.rtspreq == RTSPREQ_RECEIVE &&
            (conn->proto.rtspc.rtp_channel == -1)) {
      infof(data, "Got an RTP Receive with a CSeq of %ld\n", CSeq_recv);
    }
  }

  return httpStatus;
}
