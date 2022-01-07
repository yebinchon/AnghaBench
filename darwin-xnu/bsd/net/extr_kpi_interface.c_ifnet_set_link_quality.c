
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * ifnet_t ;
typedef int errno_t ;


 int EINVAL ;
 int ENXIO ;
 int IFNET_LQM_MAX ;
 int IFNET_LQM_MIN ;
 int if_lqm_update (int *,int,int ) ;
 int ifnet_is_attached (int *,int ) ;

errno_t
ifnet_set_link_quality(ifnet_t ifp, int quality)
{
 errno_t err = 0;

 if (ifp == ((void*)0) || quality < IFNET_LQM_MIN || quality > IFNET_LQM_MAX) {
  err = EINVAL;
  goto done;
 }

 if (!ifnet_is_attached(ifp, 0)) {
  err = ENXIO;
  goto done;
 }

 if_lqm_update(ifp, quality, 0);

done:
 return (err);
}
