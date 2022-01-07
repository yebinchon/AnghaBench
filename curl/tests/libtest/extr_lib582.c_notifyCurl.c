
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int curl_socket_t ;
typedef scalar_t__ CURLMcode ;
typedef int CURLM ;


 scalar_t__ CURLM_OK ;
 scalar_t__ curl_multi_socket_action (int *,int ,int,int*) ;
 char* curl_multi_strerror (scalar_t__) ;
 int fprintf (int ,char*,char const*,scalar_t__,char*) ;
 int stderr ;

__attribute__((used)) static void notifyCurl(CURLM *curl, curl_socket_t s, int evBitmask,
                       const char *info)
{
  int numhandles = 0;
  CURLMcode result = curl_multi_socket_action(curl, s, evBitmask, &numhandles);
  if(result != CURLM_OK) {
    fprintf(stderr, "Curl error on %s: %i (%s)\n",
            info, result, curl_multi_strerror(result));
  }
}
