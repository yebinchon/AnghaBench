
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct connectdata {unsigned short remote_port; } ;
struct TYPE_3__ {int uh; scalar_t__ allow_port; } ;
struct TYPE_4__ {scalar_t__ use_port; } ;
struct Curl_easy {TYPE_1__ state; TYPE_2__ set; } ;
typedef int portbuf ;
typedef int CURLcode ;
typedef scalar_t__ CURLUcode ;


 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 int CURLUPART_PORT ;
 scalar_t__ curl_url_set (int ,int ,char*,int ) ;
 int msnprintf (char*,int,char*,unsigned short) ;

__attribute__((used)) static CURLcode parse_remote_port(struct Curl_easy *data,
                                  struct connectdata *conn)
{

  if(data->set.use_port && data->state.allow_port) {

    char portbuf[16];
    CURLUcode uc;
    conn->remote_port = (unsigned short)data->set.use_port;
    msnprintf(portbuf, sizeof(portbuf), "%d", conn->remote_port);
    uc = curl_url_set(data->state.uh, CURLUPART_PORT, portbuf, 0);
    if(uc)
      return CURLE_OUT_OF_MEMORY;
  }

  return CURLE_OK;
}
