
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mptsub {int dummy; } ;


 int bzero (struct mptsub*,int ) ;
 int mptsub_zone ;
 int mptsub_zone_size ;
 struct mptsub* zalloc (int ) ;

__attribute__((used)) static struct mptsub *
mptcp_subflow_alloc(void)
{
 struct mptsub *mpts = zalloc(mptsub_zone);

 if (mpts == ((void*)0))
  return (((void*)0));

 bzero(mpts, mptsub_zone_size);
 return (mpts);
}
