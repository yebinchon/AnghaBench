
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct route {int dummy; } ;


 int rtalloc_ign (struct route*,int ) ;

void
rtalloc(struct route *ro)
{
 rtalloc_ign(ro, 0);
}
