
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct secasvar {int ivlen; int iv; } ;


 int key_randomfill (int ,int ) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int panic (char*) ;
 int sadb_mutex ;

void
key_sa_stir_iv(
      struct secasvar *sav)
{
 lck_mtx_lock(sadb_mutex);
 if (!sav->iv)
  panic("key_sa_stir_iv called with sav == NULL");
 key_randomfill(sav->iv, sav->ivlen);
 lck_mtx_unlock(sadb_mutex);
}
