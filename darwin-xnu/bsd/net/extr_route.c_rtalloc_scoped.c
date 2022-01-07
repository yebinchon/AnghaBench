
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct route {int dummy; } ;


 int rtalloc_scoped_ign (struct route*,int ,unsigned int) ;

void
rtalloc_scoped(struct route *ro, unsigned int ifscope)
{
 rtalloc_scoped_ign(ro, 0, ifscope);
}
