
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int close; int protoconnstart; } ;
struct connectdata {TYPE_2__ bits; TYPE_1__* handler; } ;
struct TYPE_6__ {scalar_t__ httpversion; } ;
struct Curl_easy {TYPE_3__ set; int multi; } ;
struct TYPE_4__ {int protocol; } ;


 int CURLPIPE_MULTIPLEX ;
 scalar_t__ CURL_HTTP_VERSION_2 ;
 scalar_t__ Curl_multiplex_wanted (int ) ;
 int PROTO_FAMILY_HTTP ;

__attribute__((used)) static int IsMultiplexingPossible(const struct Curl_easy *handle,
                                  const struct connectdata *conn)
{
  int avail = 0;


  if((conn->handler->protocol & PROTO_FAMILY_HTTP) &&
     (!conn->bits.protoconnstart || !conn->bits.close)) {

    if(Curl_multiplex_wanted(handle->multi) &&
       (handle->set.httpversion >= CURL_HTTP_VERSION_2))

      avail |= CURLPIPE_MULTIPLEX;
  }
  return avail;
}
