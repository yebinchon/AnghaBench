
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timediff_t ;
typedef int time_t ;
struct curltime {int dummy; } ;
typedef int curl_off_t ;


 int CURL_OFF_T_C (int) ;
 int CURL_OFF_T_MAX ;
 int Curl_timediff (struct curltime,struct curltime) ;
 int TIMEDIFF_T_MAX ;

timediff_t Curl_pgrsLimitWaitTime(curl_off_t cursize,
                                  curl_off_t startsize,
                                  curl_off_t limit,
                                  struct curltime start,
                                  struct curltime now)
{
  curl_off_t size = cursize - startsize;
  timediff_t minimum;
  timediff_t actual;

  if(!limit || !size)
    return 0;





  if(size < CURL_OFF_T_MAX/1000)
    minimum = (time_t) (CURL_OFF_T_C(1000) * size / limit);
  else {
    minimum = (time_t) (size / limit);
    if(minimum < TIMEDIFF_T_MAX/1000)
      minimum *= 1000;
    else
      minimum = TIMEDIFF_T_MAX;
  }





  actual = Curl_timediff(now, start);
  if(actual < minimum) {


    return (minimum - actual);
  }

  return 0;
}
