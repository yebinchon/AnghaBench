
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int name; } ;
struct TYPE_5__ {scalar_t__ tunnel_proxy; scalar_t__ netrc; scalar_t__ httpproxy; scalar_t__ user_passwd; scalar_t__ proxy_user_passwd; } ;
struct connectdata {TYPE_4__ host; TYPE_1__ bits; scalar_t__ oauth_bearer; struct Curl_easy* data; } ;
struct auth {void* done; scalar_t__ want; scalar_t__ picked; } ;
struct TYPE_7__ {int first_host; int this_is_a_follow; struct auth authproxy; struct auth authhost; } ;
struct TYPE_6__ {scalar_t__ allow_auth_to_other_hosts; } ;
struct Curl_easy {TYPE_3__ state; TYPE_2__ set; } ;
typedef scalar_t__ bit ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 int DEBUGASSERT (struct Curl_easy*) ;
 void* FALSE ;
 void* TRUE ;
 scalar_t__ output_auth_headers (struct connectdata*,struct auth*,char const*,char const*,void*) ;
 scalar_t__ strcasecompare (int ,int ) ;

CURLcode
Curl_http_output_auth(struct connectdata *conn,
                      const char *request,
                      const char *path,
                      bool proxytunnel)

{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;
  struct auth *authhost;
  struct auth *authproxy;

  DEBUGASSERT(data);

  authhost = &data->state.authhost;
  authproxy = &data->state.authproxy;

  if((conn->bits.httpproxy && conn->bits.proxy_user_passwd) ||
     conn->bits.user_passwd || conn->oauth_bearer)
                         ;
  else {
    authhost->done = TRUE;
    authproxy->done = TRUE;
    return CURLE_OK;
  }

  if(authhost->want && !authhost->picked)



    authhost->picked = authhost->want;

  if(authproxy->want && !authproxy->picked)



    authproxy->picked = authproxy->want;



  if(conn->bits.httpproxy &&
     (conn->bits.tunnel_proxy == (bit)proxytunnel)) {
    result = output_auth_headers(conn, authproxy, request, path, TRUE);
    if(result)
      return result;
  }
  else





    authproxy->done = TRUE;



  if(!data->state.this_is_a_follow ||
     conn->bits.netrc ||
     !data->state.first_host ||
     data->set.allow_auth_to_other_hosts ||
     strcasecompare(data->state.first_host, conn->host.name)) {
    result = output_auth_headers(conn, authhost, request, path, FALSE);
  }
  else
    authhost->done = TRUE;

  return result;
}
