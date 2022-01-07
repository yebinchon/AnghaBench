
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURLcode ;
typedef int CURL ;


 int CURLE_OK ;
 int CURLOPT_RANGE ;
 int CURLOPT_RTSP_REQUEST ;
 int CURLOPT_RTSP_STREAM_URI ;
 scalar_t__ CURL_RTSPREQ_PLAY ;
 int my_curl_easy_perform (int *) ;
 int my_curl_easy_setopt (int *,int ,...) ;
 int printf (char*,char const*) ;

__attribute__((used)) static void rtsp_play(CURL *curl, const char *uri, const char *range)
{
  CURLcode res = CURLE_OK;
  printf("\nRTSP: PLAY %s\n", uri);
  my_curl_easy_setopt(curl, CURLOPT_RTSP_STREAM_URI, uri);
  my_curl_easy_setopt(curl, CURLOPT_RANGE, range);
  my_curl_easy_setopt(curl, CURLOPT_RTSP_REQUEST, (long)CURL_RTSPREQ_PLAY);
  my_curl_easy_perform(curl);


  my_curl_easy_setopt(curl, CURLOPT_RANGE, ((void*)0));
}
