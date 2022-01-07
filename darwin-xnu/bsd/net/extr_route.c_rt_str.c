
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct rtentry {int dummy; } ;
struct TYPE_2__ {int sa_family; } ;




 int bzero (char*,int ) ;
 TYPE_1__* rt_key (struct rtentry*) ;
 int rt_str4 (struct rtentry*,char*,int ,char*,int ) ;
 int rt_str6 (struct rtentry*,char*,int ,char*,int ) ;

void
rt_str(struct rtentry *rt, char *ds, uint32_t dslen, char *gs, uint32_t gslen)
{
 switch (rt_key(rt)->sa_family) {
 case 129:
  rt_str4(rt, ds, dslen, gs, gslen);
  break;





 default:
  if (ds != ((void*)0))
   bzero(ds, dslen);
  if (gs != ((void*)0))
   bzero(gs, gslen);
  break;
 }
}
