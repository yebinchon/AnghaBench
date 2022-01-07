
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef TYPE_1__* os_reason_t ;
struct TYPE_5__ {int osr_refcount; int osr_lock; int * osr_kcd_buf; scalar_t__ osr_bufsize; scalar_t__ osr_flags; int osr_code; int osr_namespace; } ;


 TYPE_1__* OS_REASON_NULL ;
 int bzero (TYPE_1__*,int) ;
 int kprintf (char*,int ,int ) ;
 int lck_mtx_init (int *,int ,int ) ;
 scalar_t__ os_reason_debug_disabled ;
 int os_reason_lock_attr ;
 int os_reason_lock_grp ;
 int os_reason_zone ;
 int panic (char*,int ,int ) ;
 scalar_t__ zalloc (int ) ;

os_reason_t
os_reason_create(uint32_t osr_namespace, uint64_t osr_code)
{
 os_reason_t new_reason = OS_REASON_NULL;

 new_reason = (os_reason_t) zalloc(os_reason_zone);
 if (new_reason == OS_REASON_NULL) {
  return new_reason;
 }

 bzero(new_reason, sizeof(*new_reason));

 new_reason->osr_namespace = osr_namespace;
 new_reason->osr_code = osr_code;
 new_reason->osr_flags = 0;
 new_reason->osr_bufsize = 0;
 new_reason->osr_kcd_buf = ((void*)0);

 lck_mtx_init(&new_reason->osr_lock, os_reason_lock_grp, os_reason_lock_attr);
 new_reason->osr_refcount = 1;

 return new_reason;
}
