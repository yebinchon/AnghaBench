
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ifnet_t ;
typedef int errno_t ;


 int dlil_if_ref (int ) ;

errno_t
ifnet_reference(ifnet_t ifp)
{
 return (dlil_if_ref(ifp));
}
