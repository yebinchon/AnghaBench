
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int rawalloc; } ;
struct connectdata {TYPE_1__ host; int transport; struct Curl_easy* data; } ;
struct TYPE_6__ {int prefer_ascii; } ;
struct TYPE_7__ {int path; } ;
struct TYPE_8__ {TYPE_3__ up; } ;
struct Curl_easy {TYPE_2__ set; TYPE_4__ state; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 char Curl_raw_toupper (char) ;
 int FALSE ;
 int TRNSPRT_UDP ;
 int TRUE ;
 char* strstr (int ,char*) ;

__attribute__((used)) static CURLcode tftp_setup_connection(struct connectdata * conn)
{
  struct Curl_easy *data = conn->data;
  char *type;

  conn->transport = TRNSPRT_UDP;



  type = strstr(data->state.up.path, ";mode=");

  if(!type)
    type = strstr(conn->host.rawalloc, ";mode=");

  if(type) {
    char command;
    *type = 0;
    command = Curl_raw_toupper(type[6]);

    switch(command) {
    case 'A':
    case 'N':
      data->set.prefer_ascii = TRUE;
      break;

    case 'O':
    case 'I':
    default:

      data->set.prefer_ascii = FALSE;
      break;
    }
  }

  return CURLE_OK;
}
