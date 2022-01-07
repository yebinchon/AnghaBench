
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int timediff_t ;
struct curltime {scalar_t__ tv_sec; } ;
struct connectdata {struct Curl_easy* data; } ;
struct TYPE_2__ {int downloaded; int uploaded; int dlspeed; int ulspeed; scalar_t__ lastshow; int speeder_c; int* speeder; int current_speed; struct curltime* speeder_time; scalar_t__ timespent; int start; } ;
struct Curl_easy {TYPE_1__ progress; } ;
typedef int curl_off_t ;


 int CURL_OFF_T_C (int) ;
 int CURL_OFF_T_MAX ;
 int CURR_TIME ;
 int Curl_timediff (struct curltime,struct curltime) ;
 scalar_t__ Curl_timediff_us (struct curltime,int ) ;
 int FALSE ;
 int TRUE ;

__attribute__((used)) static bool progress_calc(struct connectdata *conn, struct curltime now)
{
  curl_off_t timespent;
  curl_off_t timespent_ms;
  struct Curl_easy *data = conn->data;
  curl_off_t dl = data->progress.downloaded;
  curl_off_t ul = data->progress.uploaded;
  bool timetoshow = FALSE;


  data->progress.timespent = Curl_timediff_us(now, data->progress.start);
  timespent = (curl_off_t)data->progress.timespent/1000000;
  timespent_ms = (curl_off_t)data->progress.timespent/1000;


  if(dl < CURL_OFF_T_MAX/1000)
    data->progress.dlspeed = (dl * 1000 / (timespent_ms>0?timespent_ms:1));
  else
    data->progress.dlspeed = (dl / (timespent>0?timespent:1));


  if(ul < CURL_OFF_T_MAX/1000)
    data->progress.ulspeed = (ul * 1000 / (timespent_ms>0?timespent_ms:1));
  else
    data->progress.ulspeed = (ul / (timespent>0?timespent:1));


  if(data->progress.lastshow != now.tv_sec) {
    int countindex;
    int nowindex = data->progress.speeder_c% CURR_TIME;
    data->progress.lastshow = now.tv_sec;
    timetoshow = TRUE;



    data->progress.speeder[ nowindex ] =
      data->progress.downloaded + data->progress.uploaded;


    data->progress.speeder_time [ nowindex ] = now;



    data->progress.speeder_c++;





    countindex = ((data->progress.speeder_c >= CURR_TIME)?
                  CURR_TIME:data->progress.speeder_c) - 1;


    if(countindex) {
      int checkindex;
      timediff_t span_ms;




      checkindex = (data->progress.speeder_c >= CURR_TIME)?
        data->progress.speeder_c%CURR_TIME:0;


      span_ms = Curl_timediff(now, data->progress.speeder_time[checkindex]);
      if(0 == span_ms)
        span_ms = 1;


      {
        curl_off_t amount = data->progress.speeder[nowindex]-
          data->progress.speeder[checkindex];

        if(amount > CURL_OFF_T_C(4294967) )


          data->progress.current_speed = (curl_off_t)
            ((double)amount/((double)span_ms/1000.0));
        else


          data->progress.current_speed = amount*CURL_OFF_T_C(1000)/span_ms;
      }
    }
    else

      data->progress.current_speed =
        data->progress.ulspeed + data->progress.dlspeed;

  }
  return timetoshow;
}
