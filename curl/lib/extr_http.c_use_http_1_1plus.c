
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct connectdata {int httpversion; } ;
struct TYPE_4__ {scalar_t__ httpversion; } ;
struct TYPE_3__ {int httpversion; } ;
struct Curl_easy {TYPE_2__ set; TYPE_1__ state; } ;


 scalar_t__ CURL_HTTP_VERSION_1_0 ;
 scalar_t__ CURL_HTTP_VERSION_1_1 ;
 scalar_t__ CURL_HTTP_VERSION_NONE ;
 int FALSE ;

__attribute__((used)) static bool use_http_1_1plus(const struct Curl_easy *data,
                             const struct connectdata *conn)
{
  if((data->state.httpversion == 10) || (conn->httpversion == 10))
    return FALSE;
  if((data->set.httpversion == CURL_HTTP_VERSION_1_0) &&
     (conn->httpversion <= 10))
    return FALSE;
  return ((data->set.httpversion == CURL_HTTP_VERSION_NONE) ||
          (data->set.httpversion >= CURL_HTTP_VERSION_1_1));
}
