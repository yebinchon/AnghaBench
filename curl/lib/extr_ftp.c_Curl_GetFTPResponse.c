
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time_t ;
struct pingpong {int pending_resp; scalar_t__ cache; } ;
struct ftp_conn {struct pingpong pp; } ;
struct TYPE_2__ {struct ftp_conn ftpc; } ;
struct connectdata {TYPE_1__ proto; struct Curl_easy* data; int * sock; } ;
struct Curl_easy {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int curl_socket_t ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_ABORTED_BY_CALLBACK ;
 scalar_t__ CURLE_OK ;
 scalar_t__ CURLE_OPERATION_TIMEDOUT ;
 scalar_t__ CURLE_RECV_ERROR ;
 int Curl_conn_data_pending (struct connectdata*,size_t) ;
 int Curl_pgrsUpdate (struct connectdata*) ;
 int Curl_pp_state_timeout (struct pingpong*,int ) ;
 int FALSE ;
 size_t FIRSTSOCKET ;
 int SOCKERRNO ;
 int SOCKET_READABLE (int ,int) ;
 int failf (struct Curl_easy*,char*,...) ;
 scalar_t__ ftp_readresp (int ,struct pingpong*,int*,size_t*) ;

CURLcode Curl_GetFTPResponse(ssize_t *nreadp,
                             struct connectdata *conn,
                             int *ftpcode)
{







  curl_socket_t sockfd = conn->sock[FIRSTSOCKET];
  struct Curl_easy *data = conn->data;
  CURLcode result = CURLE_OK;
  struct ftp_conn *ftpc = &conn->proto.ftpc;
  struct pingpong *pp = &ftpc->pp;
  size_t nread;
  int cache_skip = 0;
  int value_to_be_ignored = 0;

  if(ftpcode)
    *ftpcode = 0;
  else

    ftpcode = &value_to_be_ignored;

  *nreadp = 0;

  while(!*ftpcode && !result) {

    time_t timeout = Curl_pp_state_timeout(pp, FALSE);
    time_t interval_ms;

    if(timeout <= 0) {
      failf(data, "FTP response timeout");
      return CURLE_OPERATION_TIMEDOUT;
    }

    interval_ms = 1000;
    if(timeout < interval_ms)
      interval_ms = timeout;
    if(pp->cache && (cache_skip < 2)) {






    }
    else if(!Curl_conn_data_pending(conn, FIRSTSOCKET)) {
      switch(SOCKET_READABLE(sockfd, interval_ms)) {
      case -1:
        failf(data, "FTP response aborted due to select/poll error: %d",
              SOCKERRNO);
        return CURLE_RECV_ERROR;

      case 0:
        if(Curl_pgrsUpdate(conn))
          return CURLE_ABORTED_BY_CALLBACK;
        continue;

      default:
        break;
      }
    }
    result = ftp_readresp(sockfd, pp, ftpcode, &nread);
    if(result)
      break;

    if(!nread && pp->cache)


      cache_skip++;
    else


      cache_skip = 0;

    *nreadp += nread;

  }

  pp->pending_resp = FALSE;

  return result;
}
