
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURL ;


 int CURLOPT_HEADERFUNCTION ;
 int CURLOPT_PROXY ;
 int CURLOPT_PROXYUSERPWD ;
 int CURLOPT_USERAGENT ;
 int CURLOPT_WRITEFUNCTION ;
 char* SYNCTIME_UA ;
 char** SyncTime_CURL_WriteHeader ;
 char** SyncTime_CURL_WriteOutput ;
 int curl_easy_setopt (int *,int ,char*) ;
 scalar_t__ strlen (char*) ;

void SyncTime_CURL_Init(CURL *curl, char *proxy_port,
                        char *proxy_user_password)
{
  if(strlen(proxy_port) > 0)
    curl_easy_setopt(curl, CURLOPT_PROXY, proxy_port);

  if(strlen(proxy_user_password) > 0)
    curl_easy_setopt(curl, CURLOPT_PROXYUSERPWD, proxy_user_password);




  curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, *SyncTime_CURL_WriteOutput);
  curl_easy_setopt(curl, CURLOPT_HEADERFUNCTION, *SyncTime_CURL_WriteHeader);
}
