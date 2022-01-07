
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURLcode ;


 int ASCII_CCSID ;
 char* Curl_thread_buffer (int ,int) ;
 int LK_EASY_STRERROR ;
 int MAX_CONV_EXPANSION ;
 scalar_t__ convert (char*,int,unsigned int,char const*,int,int ) ;
 char* curl_easy_strerror (int ) ;
 int strlen (char const*) ;

const char *
curl_easy_strerror_ccsid(CURLcode error, unsigned int ccsid)

{
  int i;
  const char *s;
  char *buf;

  s = curl_easy_strerror(error);

  if(!s)
    return s;

  i = MAX_CONV_EXPANSION * (strlen(s) + 1);

  buf = Curl_thread_buffer(LK_EASY_STRERROR, i);
  if(!buf)
    return (const char *) ((void*)0);

  if(convert(buf, i, ccsid, s, -1, ASCII_CCSID) < 0)
    return (const char *) ((void*)0);

  return (const char *) buf;
}
