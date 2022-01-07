
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lck_attr_alloc_init () ;
 int lck_grp_alloc_init (char*,int ) ;
 int lck_grp_attr_alloc_init () ;
 int tty_lck_attr ;
 int tty_lck_grp ;
 int tty_lck_grp_attr ;

void
tty_init(void)
{
 tty_lck_grp_attr = lck_grp_attr_alloc_init();
 tty_lck_grp = lck_grp_alloc_init("tty", tty_lck_grp_attr);
 tty_lck_attr = lck_attr_alloc_init();
}
