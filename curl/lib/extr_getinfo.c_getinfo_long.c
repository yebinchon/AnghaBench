
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {long httpcode; long httpproxycode; long filetime; unsigned long httpauthavail; unsigned long proxyauthavail; long numconnects; long conn_primary_port; long conn_local_port; long conn_protocol; int httpversion; int timecond; scalar_t__ request_size; scalar_t__ header_size; } ;
struct TYPE_9__ {long os_errno; long rtsp_next_client_CSeq; long rtsp_next_server_CSeq; long rtsp_CSeq_recv; } ;
struct TYPE_7__ {long certverifyresult; } ;
struct TYPE_6__ {long certverifyresult; } ;
struct TYPE_8__ {long followlocation; TYPE_2__ proxy_ssl; TYPE_1__ ssl; } ;
struct Curl_easy {TYPE_5__ info; TYPE_4__ state; TYPE_3__ set; } ;
typedef scalar_t__ curl_socket_t ;
typedef int CURLcode ;
typedef int CURLINFO ;


 int CURLE_OK ;
 int CURLE_UNKNOWN_OPTION ;
 long CURL_HTTP_VERSION_1_0 ;
 long CURL_HTTP_VERSION_1_1 ;
 long CURL_HTTP_VERSION_2_0 ;
 long CURL_HTTP_VERSION_3 ;
 long CURL_HTTP_VERSION_NONE ;
 scalar_t__ CURL_SOCKET_BAD ;
 scalar_t__ Curl_getconnectinfo (struct Curl_easy*,int *) ;
 long LONG_MAX ;
 long LONG_MIN ;

__attribute__((used)) static CURLcode getinfo_long(struct Curl_easy *data, CURLINFO info,
                             long *param_longp)
{
  curl_socket_t sockfd;

  union {
    unsigned long *to_ulong;
    long *to_long;
  } lptr;

  switch(info) {
  case 132:
    *param_longp = data->info.httpcode;
    break;
  case 144:
    *param_longp = data->info.httpproxycode;
    break;
  case 147:
    if(data->info.filetime > LONG_MAX)
      *param_longp = LONG_MAX;
    else if(data->info.filetime < LONG_MIN)
      *param_longp = LONG_MIN;
    else
      *param_longp = (long)data->info.filetime;
    break;
  case 146:
    *param_longp = (long)data->info.header_size;
    break;
  case 133:
    *param_longp = (long)data->info.request_size;
    break;
  case 128:
    *param_longp = data->set.ssl.certverifyresult;
    break;
  case 135:
    *param_longp = data->set.proxy_ssl.certverifyresult;
    break;
  case 134:
    *param_longp = data->set.followlocation;
    break;
  case 145:
    lptr.to_long = param_longp;
    *lptr.to_ulong = data->info.httpauthavail;
    break;
  case 136:
    lptr.to_long = param_longp;
    *lptr.to_ulong = data->info.proxyauthavail;
    break;
  case 139:
    *param_longp = data->state.os_errno;
    break;
  case 140:
    *param_longp = data->info.numconnects;
    break;
  case 142:
    sockfd = Curl_getconnectinfo(data, ((void*)0));



    if(sockfd != CURL_SOCKET_BAD)
      *param_longp = (long)sockfd;
    else


      *param_longp = -1;
    break;
  case 138:

    *param_longp = data->info.conn_primary_port;
    break;
  case 141:

    *param_longp = data->info.conn_local_port;
    break;
  case 148:

    *param_longp = data->info.timecond ? 1L : 0L;
    break;
  case 131:
    *param_longp = data->state.rtsp_next_client_CSeq;
    break;
  case 129:
    *param_longp = data->state.rtsp_next_server_CSeq;
    break;
  case 130:
    *param_longp = data->state.rtsp_CSeq_recv;
    break;
  case 143:
    switch(data->info.httpversion) {
    case 10:
      *param_longp = CURL_HTTP_VERSION_1_0;
      break;
    case 11:
      *param_longp = CURL_HTTP_VERSION_1_1;
      break;
    case 20:
      *param_longp = CURL_HTTP_VERSION_2_0;
      break;
    case 30:
      *param_longp = CURL_HTTP_VERSION_3;
      break;
    default:
      *param_longp = CURL_HTTP_VERSION_NONE;
      break;
    }
    break;
  case 137:
    *param_longp = data->info.conn_protocol;
    break;
  default:
    return CURLE_UNKNOWN_OPTION;
  }

  return CURLE_OK;
}
