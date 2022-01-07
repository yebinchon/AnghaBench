
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sndbufsize ;
typedef int curlsocktype ;
typedef int curl_socket_t ;


 int CURL_SOCKOPT_OK ;
 int SOL_SOCKET ;
 int SO_SNDBUF ;
 int setsockopt (int ,int ,int ,char const*,int) ;

__attribute__((used)) static int sockopt_callback(void *clientp, curl_socket_t curlfd,
                            curlsocktype purpose)
{







  (void)clientp;
  (void)curlfd;
  (void)purpose;

  return CURL_SOCKOPT_OK;
}
