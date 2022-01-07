
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;



__attribute__((used)) static int
pru_preconnect_null(struct socket *so)
{
#pragma unused(so)
 return (0);
}
