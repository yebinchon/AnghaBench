
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int iptap_lck_rw ;
 int lck_rw_done (int *) ;

__attribute__((used)) static void
iptap_lock_done(void)
{
 lck_rw_done(&iptap_lck_rw);
}
