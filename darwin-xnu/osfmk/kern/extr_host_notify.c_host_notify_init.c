
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host_notify_entry {int dummy; } ;


 int HOST_NOTIFY_TYPE_MAX ;
 int host_notify_lock ;
 int host_notify_lock_attr ;
 int host_notify_lock_ext ;
 int host_notify_lock_grp ;
 int host_notify_lock_grp_attr ;
 int * host_notify_queue ;
 int host_notify_zone ;
 int lck_attr_setdefault (int *) ;
 int lck_grp_attr_setdefault (int *) ;
 int lck_grp_init (int *,char*,int *) ;
 int lck_mtx_init_ext (int *,int *,int *,int *) ;
 int queue_init (int *) ;
 int zinit (int,int,int,char*) ;

void
host_notify_init(void)
{
 int i;

 for (i = 0; i <= HOST_NOTIFY_TYPE_MAX; i++)
  queue_init(&host_notify_queue[i]);

 lck_grp_attr_setdefault(&host_notify_lock_grp_attr);
 lck_grp_init(&host_notify_lock_grp, "host_notify", &host_notify_lock_grp_attr);
 lck_attr_setdefault(&host_notify_lock_attr);

 lck_mtx_init_ext(&host_notify_lock, &host_notify_lock_ext, &host_notify_lock_grp, &host_notify_lock_attr);

 i = sizeof (struct host_notify_entry);
 host_notify_zone =
   zinit(i, (4096 * i), (16 * i), "host_notify");
}
