
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct TYPE_2__ {int tcp_fastopen; int reuse; } ;
struct connectdata {scalar_t__ transport; int local_port; int local_ip; int primary_ip; int ip_addr_str; int primary_port; struct Curl_easy* data; TYPE_1__ bits; } ;
struct Curl_sockaddr_storage {int dummy; } ;
struct Curl_easy {int dummy; } ;
typedef int ssloc ;
typedef int curl_socklen_t ;
typedef int curl_socket_t ;
typedef int buffer ;


 int Curl_addr2string (struct sockaddr*,int,int ,int *) ;
 int Curl_persistconninfo (struct connectdata*) ;
 int Curl_strerror (int,char*,int) ;
 int MAX_IPADR_LEN ;
 int SOCKERRNO ;
 int STRERROR_LEN ;
 scalar_t__ TRNSPRT_TCP ;
 int errno ;
 int failf (struct Curl_easy*,char*,int,int ) ;
 scalar_t__ getpeername (int ,struct sockaddr*,int*) ;
 scalar_t__ getsockname (int ,struct sockaddr*,int*) ;
 int memcpy (int ,int ,int ) ;
 int memset (struct Curl_sockaddr_storage*,int ,int) ;

void Curl_updateconninfo(struct connectdata *conn, curl_socket_t sockfd)
{
  if(conn->transport != TRNSPRT_TCP)

    return;
  (void)sockfd;



  Curl_persistconninfo(conn);
}
