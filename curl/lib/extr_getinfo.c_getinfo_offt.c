
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int retry_after; int filetime; } ;
struct TYPE_3__ {int uploaded; int downloaded; int dlspeed; int ulspeed; int flags; int size_dl; int size_ul; int timespent; int t_nslookup; int t_connect; int t_appconnect; int t_pretransfer; int t_starttransfer; int t_redirect; } ;
struct Curl_easy {TYPE_2__ info; TYPE_1__ progress; } ;
typedef int curl_off_t ;
typedef int CURLcode ;
typedef int CURLINFO ;


 int CURLE_OK ;
 int CURLE_UNKNOWN_OPTION ;
 int PGRS_DL_SIZE_KNOWN ;
 int PGRS_UL_SIZE_KNOWN ;

__attribute__((used)) static CURLcode getinfo_offt(struct Curl_easy *data, CURLINFO info,
                             curl_off_t *param_offt)
{
  switch(info) {
  case 138:
    *param_offt = (curl_off_t)data->info.filetime;
    break;
  case 132:
    *param_offt = data->progress.uploaded;
    break;
  case 133:
    *param_offt = data->progress.downloaded;
    break;
  case 131:
    *param_offt = data->progress.dlspeed;
    break;
  case 130:
    *param_offt = data->progress.ulspeed;
    break;
  case 140:
    *param_offt = (data->progress.flags & PGRS_DL_SIZE_KNOWN)?
      data->progress.size_dl:-1;
    break;
  case 139:
    *param_offt = (data->progress.flags & PGRS_UL_SIZE_KNOWN)?
      data->progress.size_ul:-1;
    break;
  case 128:
    *param_offt = data->progress.timespent;
    break;
  case 137:
    *param_offt = data->progress.t_nslookup;
    break;
  case 141:
    *param_offt = data->progress.t_connect;
    break;
  case 142:
    *param_offt = data->progress.t_appconnect;
    break;
  case 136:
    *param_offt = data->progress.t_pretransfer;
    break;
  case 129:
    *param_offt = data->progress.t_starttransfer;
    break;
  case 135:
    *param_offt = data->progress.t_redirect;
    break;
  case 134:
    *param_offt = data->info.retry_after;
    break;
  default:
    return CURLE_UNKNOWN_OPTION;
  }

  return CURLE_OK;
}
