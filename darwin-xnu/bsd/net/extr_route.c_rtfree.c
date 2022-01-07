
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtentry {int dummy; } ;


 int FALSE ;
 int rtfree_common (struct rtentry*,int ) ;

void
rtfree(struct rtentry *rt)
{
 rtfree_common(rt, FALSE);
}
