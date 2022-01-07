
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int sa_family; } ;
struct TYPE_5__ {int sin6_port; } ;
struct TYPE_4__ {int sin_port; } ;
union sockaddr_in_4_6 {TYPE_3__ sa; TYPE_2__ sin6; TYPE_1__ sin; } ;
typedef int uint16_t ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int sin ;




 int T_ASSERT_FAIL (char*,int) ;
 int T_EXPECT_POSIX_ZERO (int,char*,int) ;
 int T_QUIET ;
 int bzero (union sockaddr_in_4_6*,int) ;
 int getsockname (int,struct sockaddr*,int*) ;

__attribute__((used)) static uint16_t
sock_get_port(int sockfd)
{
 int error;
 uint16_t p;
 union sockaddr_in_4_6 sin;
 socklen_t sin_len;

 sin_len = sizeof(sin);
 bzero(&sin, sin_len);
 error = getsockname(sockfd, (struct sockaddr *)&sin, &sin_len);
 T_QUIET;
 T_EXPECT_POSIX_ZERO(error, "getsockname(%d)", sockfd);
 if (error != 0) {
  return (0);
 }
 switch (sin.sa.sa_family) {
 case 129:
  p = sin.sin.sin_port;
  break;
 case 128:
  p = sin.sin6.sin6_port;
  break;
 default:
  T_ASSERT_FAIL("unknown address family %d\n",
         sin.sa.sa_family);
  p = 0;
  break;
 }
 return (p);
}
