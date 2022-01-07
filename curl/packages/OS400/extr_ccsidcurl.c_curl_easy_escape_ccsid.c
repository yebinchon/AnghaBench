
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURL ;


 unsigned int ASCII_CCSID ;
 int EINVAL ;
 char* curl_easy_escape (int *,char*,int ) ;
 char* dynconvert (unsigned int,char const*,int,unsigned int) ;
 int errno ;
 int free (char*) ;

char *
curl_easy_escape_ccsid(CURL *handle, const char *string, int length,
                       unsigned int sccsid, unsigned int dccsid)

{
  char *s;
  char *d;

  if(!string) {
    errno = EINVAL;
    return (char *) ((void*)0);
    }

  s = dynconvert(ASCII_CCSID, string, length? length: -1, sccsid);

  if(!s)
    return (char *) ((void*)0);

  d = curl_easy_escape(handle, s, 0);
  free(s);

  if(!d)
    return (char *) ((void*)0);

  s = dynconvert(dccsid, d, -1, ASCII_CCSID);
  free(d);
  return s;
}
