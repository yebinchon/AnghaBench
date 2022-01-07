
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sflt_filter {int dummy; } ;
typedef int errno_t ;


 int sflt_register_common (struct sflt_filter const*,int,int,int,int) ;

errno_t
sflt_register(const struct sflt_filter *filter, int domain, int type,
    int protocol)
{
 return (sflt_register_common(filter, domain, type, protocol, 0));
}
