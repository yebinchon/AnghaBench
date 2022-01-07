
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;
typedef scalar_t__ SANITIZEcode ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 int CURLE_URL_MALFORMAT ;
 int Curl_safefree (char*) ;
 int curl_free (char*) ;
 char* curlx_getenv (char*) ;
 int msnprintf (char*,int,char*,char*,char*) ;
 scalar_t__ sanitize_file_name (char**,char*,int ) ;
 char* strdup (char const*) ;
 char* strrchr (char const*,char) ;
 char* strstr (char const*,char*) ;

CURLcode get_url_file_name(char **filename, const char *url)
{
  const char *pc, *pc2;

  *filename = ((void*)0);


  pc = strstr(url, "://");
  if(pc)
    pc += 3;
  else
    pc = url;

  pc2 = strrchr(pc, '\\');
  pc = strrchr(pc, '/');
  if(pc2 && (!pc || pc < pc2))
    pc = pc2;

  if(pc)

    pc++;
  else

    pc = "";

  *filename = strdup(pc);
  if(!*filename)
    return CURLE_OUT_OF_MEMORY;
  return CURLE_OK;
}
