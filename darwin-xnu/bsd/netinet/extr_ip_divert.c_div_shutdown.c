
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;


 int socantsendmore (struct socket*) ;

__attribute__((used)) static int
div_shutdown(struct socket *so)
{
 socantsendmore(so);
 return 0;
}
