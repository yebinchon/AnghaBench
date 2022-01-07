
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {scalar_t__ so_traffic_class; } ;


 scalar_t__ SO_TC_BE ;
 scalar_t__ SO_TC_OAM ;
 scalar_t__ SO_TC_RD ;

inline int
soissrcbesteffort(struct socket *so)
{
 return (so->so_traffic_class == SO_TC_BE ||
     so->so_traffic_class == SO_TC_RD ||
     so->so_traffic_class == SO_TC_OAM);
}
