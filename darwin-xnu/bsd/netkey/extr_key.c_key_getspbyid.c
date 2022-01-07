
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct secpolicy {int dummy; } ;


 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_NOTOWNED ;
 struct secpolicy* __key_getspbyid (int ) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int sadb_mutex ;

struct secpolicy *
key_getspbyid(
     u_int32_t id)
{
 struct secpolicy *sp;

    LCK_MTX_ASSERT(sadb_mutex, LCK_MTX_ASSERT_NOTOWNED);

    lck_mtx_lock(sadb_mutex);
    sp = __key_getspbyid(id);
    lck_mtx_unlock(sadb_mutex);

 return sp;
}
