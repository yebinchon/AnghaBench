
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ timediff_t ;
struct pingpong {char* cache; scalar_t__ cache_size; } ;
struct ftp_conn {struct pingpong pp; } ;
struct TYPE_2__ {struct ftp_conn ftpc; } ;
struct connectdata {TYPE_1__ proto; int * sock; struct Curl_easy* data; } ;
struct Curl_easy {int dummy; } ;
typedef int ssize_t ;
typedef int curl_socket_t ;
typedef int CURLcode ;


 int CURLE_FTP_ACCEPT_FAILED ;
 int CURLE_FTP_ACCEPT_TIMEOUT ;
 int CURLE_OK ;
 int CURLE_WEIRD_SERVER_REPLY ;
 int CURL_CSELECT_IN ;
 int CURL_CSELECT_IN2 ;
 int CURL_SOCKET_BAD ;
 int Curl_GetFTPResponse (int *,struct connectdata*,int*) ;
 int Curl_socket_check (int ,int ,int ,int ) ;
 int FALSE ;
 size_t FIRSTSOCKET ;
 size_t SECONDARYSOCKET ;
 int TRUE ;
 int failf (struct Curl_easy*,char*) ;
 scalar_t__ ftp_timeleft_accept (struct Curl_easy*) ;
 int infof (struct Curl_easy*,char*) ;

__attribute__((used)) static CURLcode ReceivedServerConnect(struct connectdata *conn, bool *received)
{
  struct Curl_easy *data = conn->data;
  curl_socket_t ctrl_sock = conn->sock[FIRSTSOCKET];
  curl_socket_t data_sock = conn->sock[SECONDARYSOCKET];
  struct ftp_conn *ftpc = &conn->proto.ftpc;
  struct pingpong *pp = &ftpc->pp;
  int result;
  timediff_t timeout_ms;
  ssize_t nread;
  int ftpcode;

  *received = FALSE;

  timeout_ms = ftp_timeleft_accept(data);
  infof(data, "Checking for server connect\n");
  if(timeout_ms < 0) {

    failf(data, "Accept timeout occurred while waiting server connect");
    return CURLE_FTP_ACCEPT_TIMEOUT;
  }


  if(pp->cache_size && pp->cache && pp->cache[0] > '3') {

    infof(data, "There is negative response in cache while serv connect\n");
    Curl_GetFTPResponse(&nread, conn, &ftpcode);
    return CURLE_FTP_ACCEPT_FAILED;
  }

  result = Curl_socket_check(ctrl_sock, data_sock, CURL_SOCKET_BAD, 0);


  switch(result) {
  case -1:

    failf(data, "Error while waiting for server connect");
    return CURLE_FTP_ACCEPT_FAILED;
  case 0:
    break;
  default:

    if(result & CURL_CSELECT_IN2) {
      infof(data, "Ready to accept data connection from server\n");
      *received = TRUE;
    }
    else if(result & CURL_CSELECT_IN) {
      infof(data, "Ctrl conn has data while waiting for data conn\n");
      Curl_GetFTPResponse(&nread, conn, &ftpcode);

      if(ftpcode/100 > 3)
        return CURLE_FTP_ACCEPT_FAILED;

      return CURLE_WEIRD_SERVER_REPLY;
    }

    break;
  }

  return CURLE_OK;
}
