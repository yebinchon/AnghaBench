
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct pingpong {long response_time; int response; struct connectdata* conn; } ;
struct connectdata {int now; struct Curl_easy* data; } ;
struct TYPE_2__ {long server_response_timeout; scalar_t__ timeout; } ;
struct Curl_easy {TYPE_1__ set; } ;


 scalar_t__ CURLMIN (scalar_t__,scalar_t__) ;
 int Curl_now () ;
 scalar_t__ Curl_timediff (int ,int ) ;

time_t Curl_pp_state_timeout(struct pingpong *pp, bool disconnecting)
{
  struct connectdata *conn = pp->conn;
  struct Curl_easy *data = conn->data;
  time_t timeout_ms;
  long response_time = (data->set.server_response_timeout)?
    data->set.server_response_timeout: pp->response_time;
  timeout_ms = response_time -
    (time_t)Curl_timediff(Curl_now(), pp->response);

  if(data->set.timeout && !disconnecting) {

    time_t timeout2_ms = data->set.timeout -
      (time_t)Curl_timediff(Curl_now(), conn->now);


    timeout_ms = CURLMIN(timeout_ms, timeout2_ms);
  }

  return timeout_ms;
}
