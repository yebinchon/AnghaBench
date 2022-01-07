
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURLcode ;
typedef int CURL ;


 int CURLOPT_LOW_SPEED_LIMIT ;
 int CURLOPT_LOW_SPEED_TIME ;
 int curl_easy_perform (int *) ;
 int curl_easy_setopt (int *,int ,long) ;

__attribute__((used)) static CURLcode run(CURL *hnd, long limit, long time)
{
  curl_easy_setopt(hnd, CURLOPT_LOW_SPEED_LIMIT, limit);
  curl_easy_setopt(hnd, CURLOPT_LOW_SPEED_TIME, time);
  return curl_easy_perform(hnd);
}
