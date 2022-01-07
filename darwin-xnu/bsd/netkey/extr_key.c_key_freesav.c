
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_int32_t ;
struct secasvar {int refcnt; int spi; } ;


 int KEYDEBUG (int ,int ) ;
 int KEYDEBUG_IPSEC_STAMP ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 scalar_t__ VM_KERNEL_ADDRPERM (struct secasvar*) ;
 int key_delsav (struct secasvar*) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 scalar_t__ ntohl (int ) ;
 int panic (char*) ;
 int printf (char*,int,int ,int ) ;
 int sadb_mutex ;

void
key_freesav(
   struct secasvar *sav,
   int locked)
{


 if (sav == ((void*)0))
  panic("key_freesav: NULL pointer is passed.\n");

 if (!locked)
  lck_mtx_lock(sadb_mutex);
 else
  LCK_MTX_ASSERT(sadb_mutex, LCK_MTX_ASSERT_OWNED);
 sav->refcnt--;
 KEYDEBUG(KEYDEBUG_IPSEC_STAMP,
     printf("DP freesav cause refcnt--:%d SA:0x%llx SPI %u\n",
     sav->refcnt, (uint64_t)VM_KERNEL_ADDRPERM(sav),
     (u_int32_t)ntohl(sav->spi)));

 if (sav->refcnt == 0)
  key_delsav(sav);
 if (!locked)
  lck_mtx_unlock(sadb_mutex);
 return;
}
