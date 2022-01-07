
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_slist {int dummy; } ;
struct GlobalConfig {scalar_t__ libcurl; } ;
typedef int CURLoption ;
typedef int CURLcode ;
typedef int CURL ;


 int CODE2 (char*,char const*,int) ;
 int CURLE_OK ;
 int curl_easy_setopt (int *,int ,struct curl_slist*) ;
 int libcurl_generate_slist (struct curl_slist*,int*) ;

CURLcode tool_setopt_slist(CURL *curl, struct GlobalConfig *config,
                           const char *name, CURLoption tag,
                           struct curl_slist *list)
{
  CURLcode ret = CURLE_OK;

  ret = curl_easy_setopt(curl, tag, list);

  if(config->libcurl && list && !ret) {
    int i;

    ret = libcurl_generate_slist(list, &i);
    if(!ret)
      CODE2("curl_easy_setopt(hnd, %s, slist%d);", name, i);
  }

 nomem:
  return ret;
}
