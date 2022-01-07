
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct if_interface_state {int dummy; } ;
typedef int * ifnet_t ;
typedef int errno_t ;


 int EINVAL ;
 int ENXIO ;
 int if_get_state (int *,struct if_interface_state*) ;
 int ifnet_is_attached (int *,int ) ;

errno_t
ifnet_get_interface_state(ifnet_t ifp,
    struct if_interface_state *if_interface_state)
{
 errno_t err = 0;

 if (ifp == ((void*)0) || if_interface_state == ((void*)0)) {
  err = EINVAL;
  goto done;
 }

 if (!ifnet_is_attached(ifp, 0)) {
  err = ENXIO;
  goto done;
 }

 if_get_state(ifp, if_interface_state);

done:
 return (err);
}
