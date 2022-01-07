
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASCII_CCSID ;
 char* Curl_thread_buffer (int ,int) ;
 int LK_CURL_VERSION ;
 int MAX_CONV_EXPANSION ;
 scalar_t__ convert (char*,int,unsigned int,char*,int,int ) ;
 char* curl_version () ;
 int strlen (char*) ;

char *
curl_version_ccsid(unsigned int ccsid)

{
  int i;
  char *aversion;
  char *eversion;

  aversion = curl_version();

  if(!aversion)
    return aversion;

  i = strlen(aversion) + 1;
  i *= MAX_CONV_EXPANSION;

  eversion = Curl_thread_buffer(LK_CURL_VERSION, i);
  if(!eversion)
    return (char *) ((void*)0);

  if(convert(eversion, i, ccsid, aversion, -1, ASCII_CCSID) < 0)
    return (char *) ((void*)0);

  return eversion;
}
