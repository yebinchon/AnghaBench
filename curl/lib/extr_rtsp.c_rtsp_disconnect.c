
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rtp_buf; } ;
struct TYPE_4__ {TYPE_1__ rtspc; } ;
struct connectdata {TYPE_2__ proto; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int Curl_safefree (int ) ;

__attribute__((used)) static CURLcode rtsp_disconnect(struct connectdata *conn, bool dead)
{
  (void) dead;
  Curl_safefree(conn->proto.rtspc.rtp_buf);
  return CURLE_OK;
}
