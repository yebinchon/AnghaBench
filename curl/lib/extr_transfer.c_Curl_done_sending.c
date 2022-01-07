
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rewindaftersend; } ;
struct connectdata {TYPE_1__ bits; } ;
struct SingleRequest {int keepon; } ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 int Curl_http2_done_sending (struct connectdata*) ;
 int Curl_quic_done_sending (struct connectdata*) ;
 scalar_t__ Curl_readrewind (struct connectdata*) ;
 int KEEP_SEND ;

CURLcode Curl_done_sending(struct connectdata *conn,
                           struct SingleRequest *k)
{
  k->keepon &= ~KEEP_SEND;


  Curl_http2_done_sending(conn);
  Curl_quic_done_sending(conn);

  if(conn->bits.rewindaftersend) {
    CURLcode result = Curl_readrewind(conn);
    if(result)
      return result;
  }
  return CURLE_OK;
}
