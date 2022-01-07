
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LCK_ATTR_NULL ;
 int LCK_GRP_ATTR_NULL ;
 int OSMalloc_tag_lck_grp ;
 int OSMalloc_tag_list ;
 int OSMalloc_tag_lock ;
 int lck_grp_alloc_init (char*,int ) ;
 int lck_mtx_init (int *,int ,int ) ;
 int queue_init (int *) ;

void
OSMalloc_init(
 void)
{
 queue_init(&OSMalloc_tag_list);

 OSMalloc_tag_lck_grp = lck_grp_alloc_init("OSMalloc_tag", LCK_GRP_ATTR_NULL);
 lck_mtx_init(&OSMalloc_tag_lock, OSMalloc_tag_lck_grp, LCK_ATTR_NULL);
}
