
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_flags1; int so_traffic_class; } ;


 scalar_t__ IS_SO_TC_BACKGROUND (int ) ;
 int SOF1_TRAFFIC_MGT_SO_BACKGROUND ;

inline int
soissrcbackground(struct socket *so)
{
 return ((so->so_flags1 & SOF1_TRAFFIC_MGT_SO_BACKGROUND) ||
  IS_SO_TC_BACKGROUND(so->so_traffic_class));
}
