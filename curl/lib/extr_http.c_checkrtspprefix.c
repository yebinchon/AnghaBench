
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Curl_easy {int dummy; } ;
typedef int statusline ;


 scalar_t__ CURLE_OK ;
 scalar_t__ Curl_convert_from_network (struct Curl_easy*,char*,scalar_t__) ;
 int FALSE ;
 int STATUS_BAD ;
 int STATUS_DONE ;
 int STATUS_UNKNOWN ;
 scalar_t__ checkprefixmax (char*,char const*,size_t) ;
 int failf (struct Curl_easy*,char*) ;
 int free (char*) ;
 char* strdup (char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static statusline
checkrtspprefix(struct Curl_easy *data,
                const char *s, size_t len)
{
  statusline result = STATUS_BAD;
  statusline onmatch = len >= 5? STATUS_DONE : STATUS_UNKNOWN;
  (void)data;
  if(checkprefixmax("RTSP/", s, len))
    result = onmatch;


  return result;
}
