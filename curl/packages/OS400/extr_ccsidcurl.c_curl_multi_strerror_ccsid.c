
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURLMcode ;


 int ASCII_CCSID ;
 char* Curl_thread_buffer (int ,int) ;
 int LK_MULTI_STRERROR ;
 int MAX_CONV_EXPANSION ;
 scalar_t__ convert (char*,int,unsigned int,char const*,int,int ) ;
 char* curl_multi_strerror (int ) ;
 int strlen (char const*) ;

const char *
curl_multi_strerror_ccsid(CURLMcode error, unsigned int ccsid)

{
  int i;
  const char *s;
  char *buf;

  s = curl_multi_strerror(error);

  if(!s)
    return s;

  i = MAX_CONV_EXPANSION * (strlen(s) + 1);

  buf = Curl_thread_buffer(LK_MULTI_STRERROR, i);
  if(!buf)
    return (const char *) ((void*)0);

  if(convert(buf, i, ccsid, s, -1, ASCII_CCSID) < 0)
    return (const char *) ((void*)0);

  return (const char *) buf;
}
