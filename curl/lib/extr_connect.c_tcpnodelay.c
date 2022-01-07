
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectdata {struct Curl_easy* data; } ;
struct Curl_easy {int dummy; } ;
typedef int onoff ;
typedef int curl_socklen_t ;
typedef int curl_socket_t ;
typedef int buffer ;


 int Curl_strerror (int ,char*,int) ;
 int IPPROTO_TCP ;
 int SOCKERRNO ;
 int STRERROR_LEN ;
 int TCP_NODELAY ;
 int infof (struct Curl_easy*,char*,...) ;
 scalar_t__ setsockopt (int ,int,int ,void*,int) ;

__attribute__((used)) static void tcpnodelay(struct connectdata *conn, curl_socket_t sockfd)
{
  (void)conn;
  (void)sockfd;

}
