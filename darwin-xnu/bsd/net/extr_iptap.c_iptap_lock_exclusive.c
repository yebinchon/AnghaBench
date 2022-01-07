
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int iptap_lck_rw ;
 int lck_rw_lock_exclusive (int *) ;

__attribute__((used)) static void
iptap_lock_exclusive(void)
{
 lck_rw_lock_exclusive(&iptap_lck_rw);
}
