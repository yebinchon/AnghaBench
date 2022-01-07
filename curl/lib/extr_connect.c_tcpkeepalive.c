
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vals ;
struct tcp_keepalive {int onoff; int keepalivetime; int keepaliveinterval; } ;
struct TYPE_2__ {int tcp_keepidle; int tcp_keepintvl; scalar_t__ tcp_keepalive; } ;
struct Curl_easy {TYPE_1__ set; } ;
typedef int optval ;
typedef scalar_t__ curl_socket_t ;
typedef int LPVOID ;
typedef int DWORD ;


 int IPPROTO_TCP ;
 int KEEPALIVE_FACTOR (int) ;
 int SIO_KEEPALIVE_VALS ;
 int SOL_SOCKET ;
 int SO_KEEPALIVE ;
 int TCP_KEEPALIVE ;
 int TCP_KEEPIDLE ;
 int TCP_KEEPINTVL ;
 int WSAGetLastError () ;
 scalar_t__ WSAIoctl (scalar_t__,int ,int ,int,int *,int ,int *,int *,int *) ;
 int curlx_sltosi (int ) ;
 int infof (struct Curl_easy*,char*,int,...) ;
 scalar_t__ setsockopt (scalar_t__,int ,int ,void*,int) ;

__attribute__((used)) static void
tcpkeepalive(struct Curl_easy *data,
             curl_socket_t sockfd)
{
  int optval = data->set.tcp_keepalive?1:0;


  if(setsockopt(sockfd, SOL_SOCKET, SO_KEEPALIVE,
        (void *)&optval, sizeof(optval)) < 0) {
    infof(data, "Failed to set SO_KEEPALIVE on fd %d\n", sockfd);
  }
  else {
  }
}
