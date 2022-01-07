
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_port_entry {int dummy; } ;


 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 struct net_port_entry* SLIST_FIRST (int *) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 scalar_t__ net_port_entry_count ;
 int net_port_entry_gen ;
 int net_port_entry_head_lock ;
 int net_port_entry_list ;
 int net_port_entry_zone ;
 int npe_next ;
 int zfree (int ,struct net_port_entry*) ;

__attribute__((used)) static void
net_port_entry_list_clear(void)
{
 struct net_port_entry *npe;

 LCK_MTX_ASSERT(&net_port_entry_head_lock, LCK_MTX_ASSERT_OWNED);

 while ((npe = SLIST_FIRST(&net_port_entry_list)) != ((void*)0)) {
  SLIST_REMOVE_HEAD(&net_port_entry_list, npe_next);

  zfree(net_port_entry_zone, npe);
 }
 net_port_entry_count = 0;
 net_port_entry_gen++;
}
