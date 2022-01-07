
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {char* contenttype; char* wouldredirect; char* conn_primary_ip; char* conn_local_ip; char* conn_scheme; } ;
struct TYPE_7__ {char** str; scalar_t__ private_data; } ;
struct TYPE_6__ {char* most_recent_ftp_entrypath; } ;
struct TYPE_5__ {char* url; } ;
struct Curl_easy {TYPE_4__ info; TYPE_3__ set; TYPE_2__ state; TYPE_1__ change; } ;
typedef int CURLcode ;
typedef int CURLINFO ;


 int CURLE_OK ;
 int CURLE_UNKNOWN_OPTION ;
 size_t STRING_RTSP_SESSION_ID ;

__attribute__((used)) static CURLcode getinfo_char(struct Curl_easy *data, CURLINFO info,
                             const char **param_charp)
{
  switch(info) {
  case 135:
    *param_charp = data->change.url?data->change.url:(char *)"";
    break;
  case 136:
    *param_charp = data->info.contenttype;
    break;
  case 131:
    *param_charp = (char *) data->set.private_data;
    break;
  case 134:





    *param_charp = data->state.most_recent_ftp_entrypath;
    break;
  case 130:


    *param_charp = data->info.wouldredirect;
    break;
  case 132:

    *param_charp = data->info.conn_primary_ip;
    break;
  case 133:


    *param_charp = data->info.conn_local_ip;
    break;
  case 129:
    *param_charp = data->set.str[STRING_RTSP_SESSION_ID];
    break;
  case 128:
    *param_charp = data->info.conn_scheme;
    break;

  default:
    return CURLE_UNKNOWN_OPTION;
  }

  return CURLE_OK;
}
