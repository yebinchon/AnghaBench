
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;
typedef scalar_t__ SANITIZEcode ;


 int Curl_safefree (char*) ;
 int curl_free (char*) ;
 char* curlx_getenv (char*) ;
 char* malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 int memmove (char*,char*,scalar_t__) ;
 int msnprintf (char*,int,char*,char*,char*) ;
 scalar_t__ sanitize_file_name (char**,char*,int ) ;
 char* strchr (char*,char) ;
 char* strdup (char*) ;
 scalar_t__ strlen (char*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static char *parse_filename(const char *ptr, size_t len)
{
  char *copy;
  char *p;
  char *q;
  char stop = '\0';


  copy = malloc(len + 1);
  if(!copy)
    return ((void*)0);
  memcpy(copy, ptr, len);
  copy[len] = '\0';

  p = copy;
  if(*p == '\'' || *p == '"') {

    stop = *p;
    p++;
  }
  else
    stop = ';';


  q = strchr(p, stop);
  if(q)
    *q = '\0';


  q = strrchr(p, '/');
  if(q) {
    p = q + 1;
    if(!*p) {
      Curl_safefree(copy);
      return ((void*)0);
    }
  }




  q = strrchr(p, '\\');
  if(q) {
    p = q + 1;
    if(!*p) {
      Curl_safefree(copy);
      return ((void*)0);
    }
  }


  q = strchr(p, '\r');
  if(q)
    *q = '\0';

  q = strchr(p, '\n');
  if(q)
    *q = '\0';

  if(copy != p)
    memmove(copy, p, strlen(p) + 1);
  return copy;
}
