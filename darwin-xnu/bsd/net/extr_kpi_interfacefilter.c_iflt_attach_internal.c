
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iff_filter {int dummy; } ;
typedef int interface_filter_t ;
typedef int * ifnet_t ;
typedef int errno_t ;


 int DLIL_IFF_INTERNAL ;
 int ENOENT ;
 int dlil_attach_filter (int *,struct iff_filter const*,int *,int ) ;

errno_t
iflt_attach_internal(
 ifnet_t interface,
 const struct iff_filter *filter,
 interface_filter_t *filter_ref)
{
 if (interface == ((void*)0)) return ENOENT;

 return dlil_attach_filter(interface, filter, filter_ref,
     DLIL_IFF_INTERNAL);
}
