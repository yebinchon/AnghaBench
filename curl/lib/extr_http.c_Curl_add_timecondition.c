
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tm {int tm_wday; size_t tm_mon; int tm_sec; int tm_min; int tm_hour; scalar_t__ tm_year; int tm_mday; } ;
struct connectdata {struct Curl_easy* data; } ;
struct TYPE_2__ {int timecondition; int timevalue; } ;
struct Curl_easy {TYPE_1__ set; } ;
typedef int datestr ;
typedef int Curl_send_buffer ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_BAD_FUNCTION_ARGUMENT ;
 scalar_t__ CURLE_OK ;



 int CURL_TIMECOND_NONE ;
 scalar_t__ Curl_add_buffer (int **,char*,int ) ;
 scalar_t__ Curl_checkheaders (struct connectdata const*,char const*) ;
 scalar_t__ Curl_gmtime (int ,struct tm*) ;
 int * Curl_month ;
 int * Curl_wkday ;
 int failf (struct Curl_easy*,char*) ;
 int msnprintf (char*,int,char*,char const*,int ,int ,int ,scalar_t__,int ,int ,int ) ;
 int strlen (char*) ;

CURLcode Curl_add_timecondition(const struct connectdata *conn,
                                Curl_send_buffer *req_buffer)
{
  struct Curl_easy *data = conn->data;
  const struct tm *tm;
  struct tm keeptime;
  CURLcode result;
  char datestr[80];
  const char *condp;

  if(data->set.timecondition == CURL_TIMECOND_NONE)

    return CURLE_OK;

  result = Curl_gmtime(data->set.timevalue, &keeptime);
  if(result) {
    failf(data, "Invalid TIMEVALUE");
    return result;
  }
  tm = &keeptime;

  switch(data->set.timecondition) {
  default:
    return CURLE_BAD_FUNCTION_ARGUMENT;

  case 130:
    condp = "If-Modified-Since";
    break;
  case 129:
    condp = "If-Unmodified-Since";
    break;
  case 128:
    condp = "Last-Modified";
    break;
  }

  if(Curl_checkheaders(conn, condp)) {

    return CURLE_OK;
  }
  msnprintf(datestr, sizeof(datestr),
            "%s: %s, %02d %s %4d %02d:%02d:%02d GMT\r\n",
            condp,
            Curl_wkday[tm->tm_wday?tm->tm_wday-1:6],
            tm->tm_mday,
            Curl_month[tm->tm_mon],
            tm->tm_year + 1900,
            tm->tm_hour,
            tm->tm_min,
            tm->tm_sec);

  result = Curl_add_buffer(&req_buffer, datestr, strlen(datestr));

  return result;
}
