
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct pingpong {scalar_t__ (* statemach_act ) (struct connectdata*) ;scalar_t__ sendleft; struct connectdata* conn; } ;
struct connectdata {struct Curl_easy* data; int * sock; } ;
struct Curl_easy {int dummy; } ;
typedef int curl_socket_t ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_ABORTED_BY_CALLBACK ;
 scalar_t__ CURLE_OK ;
 scalar_t__ CURLE_OPERATION_TIMEDOUT ;
 scalar_t__ CURLE_OUT_OF_MEMORY ;
 int CURL_SOCKET_BAD ;
 int Curl_now () ;
 scalar_t__ Curl_pgrsUpdate (struct connectdata*) ;
 scalar_t__ Curl_pp_moredata (struct pingpong*) ;
 int Curl_pp_state_timeout (struct pingpong*,int) ;
 int Curl_socket_check (int ,int ,int ,int) ;
 scalar_t__ Curl_speedcheck (struct Curl_easy*,int ) ;
 scalar_t__ Curl_ssl_data_pending (struct connectdata*,size_t) ;
 size_t FIRSTSOCKET ;
 int failf (struct Curl_easy*,char*) ;
 scalar_t__ stub1 (struct connectdata*) ;

CURLcode Curl_pp_statemach(struct pingpong *pp, bool block,
                           bool disconnecting)
{
  struct connectdata *conn = pp->conn;
  curl_socket_t sock = conn->sock[FIRSTSOCKET];
  int rc;
  time_t interval_ms;
  time_t timeout_ms = Curl_pp_state_timeout(pp, disconnecting);
  struct Curl_easy *data = conn->data;
  CURLcode result = CURLE_OK;

  if(timeout_ms <= 0) {
    failf(data, "server response timeout");
    return CURLE_OPERATION_TIMEDOUT;
  }

  if(block) {
    interval_ms = 1000;
    if(timeout_ms < interval_ms)
      interval_ms = timeout_ms;
  }
  else
    interval_ms = 0;

  if(Curl_ssl_data_pending(conn, FIRSTSOCKET))
    rc = 1;
  else if(Curl_pp_moredata(pp))

    rc = 1;
  else if(!pp->sendleft && Curl_ssl_data_pending(conn, FIRSTSOCKET))

    rc = 1;
  else
    rc = Curl_socket_check(pp->sendleft?CURL_SOCKET_BAD:sock,
                           CURL_SOCKET_BAD,
                           pp->sendleft?sock:CURL_SOCKET_BAD,
                           interval_ms);

  if(block) {

    if(Curl_pgrsUpdate(conn))
      result = CURLE_ABORTED_BY_CALLBACK;
    else
      result = Curl_speedcheck(data, Curl_now());

    if(result)
      return result;
  }

  if(rc == -1) {
    failf(data, "select/poll error");
    result = CURLE_OUT_OF_MEMORY;
  }
  else if(rc)
    result = pp->statemach_act(conn);

  return result;
}
