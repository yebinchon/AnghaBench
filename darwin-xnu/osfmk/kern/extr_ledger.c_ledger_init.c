
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LCK_GRP_ATTR_NULL ;
 int lck_grp_init (int *,char*,int ) ;
 int ledger_lck_grp ;

void
ledger_init(void)
{
        lck_grp_init(&ledger_lck_grp, "ledger", LCK_GRP_ATTR_NULL);
}
