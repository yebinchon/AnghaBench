
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_sockaddr {int dummy; } ;
typedef int curlsocktype ;
typedef int curl_socket_t ;


 int CURL_SOCKET_BAD ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static curl_socket_t opensocket(void *clientp,
                                curlsocktype purpose,
                                struct curl_sockaddr *address)
{
  (void)purpose;
  (void)address;
  (void)clientp;
  fprintf(stderr, "opensocket() returns CURL_SOCKET_BAD\n");
  return CURL_SOCKET_BAD;
}
