
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int timediff_t ;
struct curltime {int dummy; } ;
struct TYPE_4__ {int t_startop; int t_startsingle; } ;
struct TYPE_3__ {scalar_t__ timeout; scalar_t__ connecttimeout; } ;
struct Curl_easy {TYPE_2__ progress; TYPE_1__ set; } ;


 struct curltime Curl_now () ;
 int Curl_timediff (struct curltime,int ) ;
 int DEFAULT_CONNECT_TIMEOUT ;

timediff_t Curl_timeleft(struct Curl_easy *data,
                         struct curltime *nowp,
                         bool duringconnect)
{
  int timeout_set = 0;
  timediff_t timeout_ms = duringconnect?DEFAULT_CONNECT_TIMEOUT:0;
  struct curltime now;



  if(data->set.timeout > 0)
    timeout_set |= 1;
  if(duringconnect && (data->set.connecttimeout > 0))
    timeout_set |= 2;

  switch(timeout_set) {
  case 1:
    timeout_ms = data->set.timeout;
    break;
  case 2:
    timeout_ms = data->set.connecttimeout;
    break;
  case 3:
    if(data->set.timeout < data->set.connecttimeout)
      timeout_ms = data->set.timeout;
    else
      timeout_ms = data->set.connecttimeout;
    break;
  default:

    if(!duringconnect)



      return 0;
    break;
  }

  if(!nowp) {
    now = Curl_now();
    nowp = &now;
  }


  if(duringconnect)

    timeout_ms -= Curl_timediff(*nowp, data->progress.t_startsingle);
  else

    timeout_ms -= Curl_timediff(*nowp, data->progress.t_startop);
  if(!timeout_ms)

    return -1;

  return timeout_ms;
}
