
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;
typedef int CURLcode ;


 int CURLE_BAD_FUNCTION_ARGUMENT ;
 int CURLE_OK ;
 struct tm* gmtime (int *) ;
 scalar_t__ gmtime_r (int *,struct tm*) ;

CURLcode Curl_gmtime(time_t intime, struct tm *store)
{
  const struct tm *tm;




  tm = gmtime(&intime);
  if(tm)
    *store = *tm;


  if(!tm)
    return CURLE_BAD_FUNCTION_ARGUMENT;
  return CURLE_OK;
}
