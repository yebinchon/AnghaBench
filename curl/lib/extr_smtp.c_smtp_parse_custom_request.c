
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct connectdata {struct Curl_easy* data; } ;
struct SMTP {int custom; } ;
struct TYPE_4__ {char** str; } ;
struct TYPE_3__ {struct SMTP* protop; } ;
struct Curl_easy {TYPE_2__ set; TYPE_1__ req; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int Curl_urldecode (struct Curl_easy*,char const*,int ,int *,int *,int ) ;
 size_t STRING_CUSTOMREQUEST ;
 int TRUE ;

__attribute__((used)) static CURLcode smtp_parse_custom_request(struct connectdata *conn)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;
  struct SMTP *smtp = data->req.protop;
  const char *custom = data->set.str[STRING_CUSTOMREQUEST];


  if(custom)
    result = Curl_urldecode(data, custom, 0, &smtp->custom, ((void*)0), TRUE);

  return result;
}
