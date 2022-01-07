
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_flags; } ;


 int SOF_PRIVILEGED_TRAFFIC_CLASS ;

inline int
soisprivilegedtraffic(struct socket *so)
{
 return ((so->so_flags & SOF_PRIVILEGED_TRAFFIC_CLASS) ? 1 : 0);
}
