
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ timediff_t ;
struct curltime {int dummy; } ;
struct TYPE_3__ {int t_acceptdata; } ;
struct TYPE_4__ {scalar_t__ accepttimeout; } ;
struct Curl_easy {TYPE_1__ progress; TYPE_2__ set; } ;


 struct curltime Curl_now () ;
 scalar_t__ Curl_timediff (struct curltime,int ) ;
 scalar_t__ Curl_timeleft (struct Curl_easy*,struct curltime*,int ) ;
 scalar_t__ DEFAULT_ACCEPT_TIMEOUT ;
 int FALSE ;

__attribute__((used)) static timediff_t ftp_timeleft_accept(struct Curl_easy *data)
{
  timediff_t timeout_ms = DEFAULT_ACCEPT_TIMEOUT;
  timediff_t other;
  struct curltime now;

  if(data->set.accepttimeout > 0)
    timeout_ms = data->set.accepttimeout;

  now = Curl_now();


  other = Curl_timeleft(data, &now, FALSE);
  if(other && (other < timeout_ms))


    timeout_ms = other;
  else {

    timeout_ms -= Curl_timediff(now, data->progress.t_acceptdata);
    if(!timeout_ms)

      return -1;
  }

  return timeout_ms;
}
