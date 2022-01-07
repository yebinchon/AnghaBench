
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int ASCII_CCSID ;
 int curl_getdate (char const*,int const*) ;
 char* dynconvert (int ,char const*,int,unsigned int) ;
 int free (char*) ;

time_t
curl_getdate_ccsid(const char *p, const time_t * unused, unsigned int ccsid)

{
  char *s;
  time_t t;

  if(!p)
    return curl_getdate(p, unused);

  s = dynconvert(ASCII_CCSID, p, -1, ccsid);

  if(!s)
    return (time_t) -1;

  t = curl_getdate(s, unused);
  free(s);
  return t;
}
