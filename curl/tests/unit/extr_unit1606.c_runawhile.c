
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct curltime {int member_0; int tv_sec; int member_1; } ;
typedef int curl_off_t ;
struct TYPE_6__ {int current_speed; } ;
struct TYPE_7__ {TYPE_1__ progress; } ;
typedef scalar_t__ CURLcode ;


 int CURLOPT_LOW_SPEED_LIMIT ;
 int CURLOPT_LOW_SPEED_TIME ;
 scalar_t__ Curl_speedcheck (TYPE_2__*,struct curltime) ;
 int Curl_speedinit (TYPE_2__*) ;
 int curl_easy_setopt (TYPE_2__*,int ,long) ;
 TYPE_2__* easy ;

__attribute__((used)) static int runawhile(long time_limit,
                     long speed_limit,
                     curl_off_t speed,
                     int dec)
{
  int counter = 1;
  struct curltime now = {1, 0};
  CURLcode result;
  int finaltime;

  curl_easy_setopt(easy, CURLOPT_LOW_SPEED_LIMIT, speed_limit);
  curl_easy_setopt(easy, CURLOPT_LOW_SPEED_TIME, time_limit);
  Curl_speedinit(easy);

  do {

    easy->progress.current_speed = speed;
    result = Curl_speedcheck(easy, now);
    if(result)
      break;

    now.tv_sec = ++counter;
    speed -= dec;
  } while(counter < 100);

  finaltime = (int)(now.tv_sec - 1);

  return finaltime;
}
