
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lck_grp_attr_t ;
typedef int lck_attr_t ;


 int IPTAP_IFNAME ;
 int iptap_grp ;
 int iptap_lck_rw ;
 int * lck_attr_alloc_init () ;
 int lck_attr_free (int *) ;
 int lck_attr_setdefault (int *) ;
 int lck_grp_alloc_init (int ,int *) ;
 int * lck_grp_attr_alloc_init () ;
 int lck_grp_attr_free (int *) ;
 int lck_grp_attr_setdefault (int *) ;
 int lck_rw_init (int *,int ,int *) ;

__attribute__((used)) static void
iptap_alloc_lock(void)
{
 lck_grp_attr_t *grp_attr;
 lck_attr_t *attr;

 grp_attr = lck_grp_attr_alloc_init();
 lck_grp_attr_setdefault(grp_attr);
 iptap_grp = lck_grp_alloc_init(IPTAP_IFNAME, grp_attr);
 lck_grp_attr_free(grp_attr);

 attr = lck_attr_alloc_init();
 lck_attr_setdefault(attr);

 lck_rw_init(&iptap_lck_rw, iptap_grp, attr);
 lck_attr_free(attr);
}
