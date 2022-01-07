
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct waitq_link {int dummy; } ;
struct TYPE_2__ {int nreserved_releases; } ;


 int WQL_LINK ;
 TYPE_1__ g_wqlinktable ;
 struct waitq_link* wql_get_reserved (scalar_t__,int ) ;
 int wql_put_link (struct waitq_link*) ;

void waitq_link_release(uint64_t id)
{
 struct waitq_link *link;

 if (id == 0)
  return;

 link = wql_get_reserved(id, WQL_LINK);
 if (!link)
  return;






 wql_put_link(link);



}
