
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int t_redirect; scalar_t__ size_ul; scalar_t__ size_dl; scalar_t__ ulspeed; scalar_t__ dlspeed; scalar_t__ downloaded; scalar_t__ uploaded; int t_starttransfer; int t_pretransfer; int t_appconnect; int t_connect; int t_nslookup; int timespent; } ;
struct Curl_easy {TYPE_1__ progress; } ;
typedef int CURLcode ;
typedef int CURLINFO ;


 int CURLE_OK ;
 int CURLE_UNKNOWN_OPTION ;
 double DOUBLE_SECS (int ) ;
 int PGRS_DL_SIZE_KNOWN ;
 int PGRS_UL_SIZE_KNOWN ;

__attribute__((used)) static CURLcode getinfo_double(struct Curl_easy *data, CURLINFO info,
                               double *param_doublep)
{
  switch(info) {
  case 128:
    *param_doublep = DOUBLE_SECS(data->progress.timespent);
    break;
  case 136:
    *param_doublep = DOUBLE_SECS(data->progress.t_nslookup);
    break;
  case 139:
    *param_doublep = DOUBLE_SECS(data->progress.t_connect);
    break;
  case 140:
    *param_doublep = DOUBLE_SECS(data->progress.t_appconnect);
    break;
  case 135:
    *param_doublep = DOUBLE_SECS(data->progress.t_pretransfer);
    break;
  case 129:
    *param_doublep = DOUBLE_SECS(data->progress.t_starttransfer);
    break;
  case 132:
    *param_doublep = (double)data->progress.uploaded;
    break;
  case 133:
    *param_doublep = (double)data->progress.downloaded;
    break;
  case 131:
    *param_doublep = (double)data->progress.dlspeed;
    break;
  case 130:
    *param_doublep = (double)data->progress.ulspeed;
    break;
  case 138:
    *param_doublep = (data->progress.flags & PGRS_DL_SIZE_KNOWN)?
      (double)data->progress.size_dl:-1;
    break;
  case 137:
    *param_doublep = (data->progress.flags & PGRS_UL_SIZE_KNOWN)?
      (double)data->progress.size_ul:-1;
    break;
  case 134:
    *param_doublep = DOUBLE_SECS(data->progress.t_redirect);
    break;

  default:
    return CURLE_UNKNOWN_OPTION;
  }

  return CURLE_OK;
}
