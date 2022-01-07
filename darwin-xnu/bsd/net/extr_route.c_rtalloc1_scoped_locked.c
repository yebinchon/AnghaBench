
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sockaddr {int dummy; } ;
struct rtentry {int dummy; } ;


 struct rtentry* rtalloc1_common_locked (struct sockaddr*,int,int ,unsigned int) ;

struct rtentry *
rtalloc1_scoped_locked(struct sockaddr *dst, int report, uint32_t ignflags,
    unsigned int ifscope)
{
 return (rtalloc1_common_locked(dst, report, ignflags, ifscope));
}
