
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct connectdata {struct Curl_easy* data; } ;
struct POP3 {int id; } ;
struct TYPE_5__ {char* path; } ;
struct TYPE_6__ {TYPE_2__ up; } ;
struct TYPE_4__ {struct POP3* protop; } ;
struct Curl_easy {TYPE_3__ state; TYPE_1__ req; } ;
typedef int CURLcode ;


 int Curl_urldecode (struct Curl_easy*,char const*,int ,int *,int *,int ) ;
 int TRUE ;

__attribute__((used)) static CURLcode pop3_parse_url_path(struct connectdata *conn)
{

  struct Curl_easy *data = conn->data;
  struct POP3 *pop3 = data->req.protop;
  const char *path = &data->state.up.path[1];


  return Curl_urldecode(data, path, 0, &pop3->id, ((void*)0), TRUE);
}
