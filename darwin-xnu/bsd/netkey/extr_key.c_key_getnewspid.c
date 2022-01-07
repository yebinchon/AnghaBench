
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct secpolicy {int dummy; } ;


 int KEY_SADB_LOCKED ;
 int LOG_DEBUG ;
 struct secpolicy* __key_getspbyid (int) ;
 int ipseclog (int ) ;
 int key_freesp (struct secpolicy*,int ) ;
 int key_spi_trycnt ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int policy_id ;
 int sadb_mutex ;

__attribute__((used)) static u_int32_t
key_getnewspid(void)
{
 u_int32_t newid = 0;
 int count = key_spi_trycnt;
 struct secpolicy *sp;


 lck_mtx_lock(sadb_mutex);
 while (count--) {
  newid = (policy_id = (policy_id == ~0 ? 1 : policy_id + 1));

  if ((sp = __key_getspbyid(newid)) == ((void*)0))
   break;

  key_freesp(sp, KEY_SADB_LOCKED);
 }
 lck_mtx_unlock(sadb_mutex);
 if (count == 0 || newid == 0) {
  ipseclog((LOG_DEBUG, "key_getnewspid: to allocate policy id is failed.\n"));
  return 0;
 }

 return newid;
}
