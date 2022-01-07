
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {int tv_sec; } ;
struct secasvar {TYPE_2__* lft_c; } ;
struct TYPE_3__ {scalar_t__ len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct TYPE_4__ {int sadb_lifetime_usetime; int sadb_lifetime_allocations; int sadb_lifetime_bytes; } ;


 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int microtime (struct timeval*) ;
 int panic (char*) ;
 int sadb_mutex ;

void
key_sa_recordxfer(
      struct secasvar *sav,
      struct mbuf *m)
{


 if (!sav)
  panic("key_sa_recordxfer called with sav == NULL");
 if (!m)
  panic("key_sa_recordxfer called with m == NULL");
 if (!sav->lft_c)
  return;

 lck_mtx_lock(sadb_mutex);




 sav->lft_c->sadb_lifetime_bytes += m->m_pkthdr.len;







 sav->lft_c->sadb_lifetime_allocations++;
    {
  struct timeval tv;
  microtime(&tv);
  sav->lft_c->sadb_lifetime_usetime = tv.tv_sec;

    }
 lck_mtx_unlock(sadb_mutex);

 return;
}
