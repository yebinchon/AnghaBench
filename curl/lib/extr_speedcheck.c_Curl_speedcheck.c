
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int timediff_t ;
struct curltime {scalar_t__ tv_sec; } ;
struct TYPE_6__ {int low_speed_time; scalar_t__ low_speed_limit; } ;
struct TYPE_5__ {struct curltime keeps_speed; } ;
struct TYPE_4__ {scalar_t__ current_speed; } ;
struct Curl_easy {TYPE_3__ set; TYPE_2__ state; TYPE_1__ progress; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_OPERATION_TIMEDOUT ;
 int Curl_expire (struct Curl_easy*,int,int ) ;
 int Curl_timediff (struct curltime,struct curltime) ;
 int EXPIRE_SPEEDCHECK ;
 int failf (struct Curl_easy*,char*,scalar_t__,int) ;

CURLcode Curl_speedcheck(struct Curl_easy *data,
                         struct curltime now)
{
  if((data->progress.current_speed >= 0) && data->set.low_speed_time) {
    if(data->progress.current_speed < data->set.low_speed_limit) {
      if(!data->state.keeps_speed.tv_sec)

        data->state.keeps_speed = now;
      else {

        timediff_t howlong = Curl_timediff(now, data->state.keeps_speed);

        if(howlong >= data->set.low_speed_time * 1000) {

          failf(data,
                "Operation too slow. "
                "Less than %ld bytes/sec transferred the last %ld seconds",
                data->set.low_speed_limit,
                data->set.low_speed_time);
          return CURLE_OPERATION_TIMEDOUT;
        }
      }
    }
    else

      data->state.keeps_speed.tv_sec = 0;
  }

  if(data->set.low_speed_limit)


    Curl_expire(data, 1000, EXPIRE_SPEEDCHECK);

  return CURLE_OK;
}
