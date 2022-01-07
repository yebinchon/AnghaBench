
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipf_filter {int dummy; } ;
typedef int ipfilter_t ;
typedef int errno_t ;


 int ipf_add (struct ipf_filter const*,int *,int *,int) ;
 int ipv6_filters ;

errno_t
ipf_addv6_internal(
 const struct ipf_filter *filter,
 ipfilter_t *filter_ref)
{
 return (ipf_add(filter, filter_ref, &ipv6_filters, 1));
}
