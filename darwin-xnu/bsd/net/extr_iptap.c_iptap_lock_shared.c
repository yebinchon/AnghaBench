
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int iptap_lck_rw ;
 int lck_rw_lock_shared (int *) ;

__attribute__((used)) static void
iptap_lock_shared(void)
{
 lck_rw_lock_shared(&iptap_lck_rw);
}
