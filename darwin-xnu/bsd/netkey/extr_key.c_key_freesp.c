
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct secpolicy {int refcnt; } ;


 int KEYDEBUG (int ,int ) ;
 int KEYDEBUG_IPSEC_STAMP ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 scalar_t__ VM_KERNEL_ADDRPERM (struct secpolicy*) ;
 int key_delsp (struct secpolicy*) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int panic (char*) ;
 int printf (char*,int,int ) ;
 int sadb_mutex ;

void
key_freesp(
     struct secpolicy *sp,
     int locked)
{


 if (sp == ((void*)0))
  panic("key_freesp: NULL pointer is passed.\n");

 if (!locked)
  lck_mtx_lock(sadb_mutex);
 else
  LCK_MTX_ASSERT(sadb_mutex, LCK_MTX_ASSERT_OWNED);
 sp->refcnt--;
 KEYDEBUG(KEYDEBUG_IPSEC_STAMP,
     printf("DP freesp cause refcnt--:%d SP:0x%llx\n",
     sp->refcnt, (uint64_t)VM_KERNEL_ADDRPERM(sp)));

 if (sp->refcnt == 0)
  key_delsp(sp);
 if (!locked)
  lck_mtx_unlock(sadb_mutex);
 return;
}
