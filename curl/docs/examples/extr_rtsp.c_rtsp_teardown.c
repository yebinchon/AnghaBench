
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURLcode ;
typedef int CURL ;


 int CURLE_OK ;
 int CURLOPT_RTSP_REQUEST ;
 scalar_t__ CURL_RTSPREQ_TEARDOWN ;
 int my_curl_easy_perform (int *) ;
 int my_curl_easy_setopt (int *,int ,long) ;
 int printf (char*,char const*) ;

__attribute__((used)) static void rtsp_teardown(CURL *curl, const char *uri)
{
  CURLcode res = CURLE_OK;
  printf("\nRTSP: TEARDOWN %s\n", uri);
  my_curl_easy_setopt(curl, CURLOPT_RTSP_REQUEST, (long)CURL_RTSPREQ_TEARDOWN);
  my_curl_easy_perform(curl);
}
