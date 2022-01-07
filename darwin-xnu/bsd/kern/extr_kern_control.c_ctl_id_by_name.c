
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct kctl {int id; } ;


 struct kctl* ctl_find_by_name (char const*) ;
 int ctl_mtx ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;

u_int32_t
ctl_id_by_name(const char *name)
{
 u_int32_t ctl_id = 0;
 struct kctl *kctl;

 lck_mtx_lock(ctl_mtx);
 kctl = ctl_find_by_name(name);
 if (kctl)
  ctl_id = kctl->id;
 lck_mtx_unlock(ctl_mtx);

 return (ctl_id);
}
