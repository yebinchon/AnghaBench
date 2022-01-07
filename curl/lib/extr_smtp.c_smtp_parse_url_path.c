
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct smtp_conn {int domain; } ;
struct TYPE_4__ {struct smtp_conn smtpc; } ;
struct connectdata {struct Curl_easy* data; TYPE_1__ proto; } ;
struct TYPE_6__ {char* path; } ;
struct TYPE_5__ {TYPE_3__ up; } ;
struct Curl_easy {TYPE_2__ state; } ;
typedef int localhost ;
typedef int CURLcode ;


 int Curl_gethostname (char*,int) ;
 int Curl_urldecode (struct Curl_easy*,char const*,int ,int *,int *,int ) ;
 int HOSTNAME_MAX ;
 int TRUE ;

__attribute__((used)) static CURLcode smtp_parse_url_path(struct connectdata *conn)
{

  struct Curl_easy *data = conn->data;
  struct smtp_conn *smtpc = &conn->proto.smtpc;
  const char *path = &data->state.up.path[1];
  char localhost[HOSTNAME_MAX + 1];


  if(!*path) {
    if(!Curl_gethostname(localhost, sizeof(localhost)))
      path = localhost;
    else
      path = "localhost";
  }


  return Curl_urldecode(conn->data, path, 0, &smtpc->domain, ((void*)0), TRUE);
}
