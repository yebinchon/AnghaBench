
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ h2; } ;
struct TYPE_6__ {TYPE_2__ httpc; } ;
struct connectdata {int httpversion; TYPE_3__ proto; } ;
struct TYPE_4__ {scalar_t__ httpversion; } ;
struct Curl_easy {TYPE_1__ set; } ;


 scalar_t__ CURL_HTTP_VERSION_3 ;
 scalar_t__ use_http_1_1plus (struct Curl_easy const*,struct connectdata const*) ;

__attribute__((used)) static const char *get_http_string(const struct Curl_easy *data,
                                   const struct connectdata *conn)
{
  if(use_http_1_1plus(data, conn))
    return "1.1";

  return "1.0";
}
