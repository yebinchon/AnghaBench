
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int sin_len; int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int sin ;


 int AF_INET ;
 int bind (int,struct sockaddr const*,int) ;
 int htons (int) ;

__attribute__((used)) static int
sock_bind(int s, int port)
{
 struct sockaddr_in sin = {
  .sin_len = sizeof(sin),
  .sin_family = AF_INET,
 };

 sin.sin_port = htons(port);
 return (bind(s, (const struct sockaddr *)&sin, sizeof(sin)));
}
