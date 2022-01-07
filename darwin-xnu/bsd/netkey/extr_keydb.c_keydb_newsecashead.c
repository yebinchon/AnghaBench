
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct secashead {int * savtree; } ;


 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int LIST_INIT (int *) ;
 int M_NOWAIT ;
 int M_SECA ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ _MALLOC (int,int ,int) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int sadb_mutex ;

struct secashead *
keydb_newsecashead(void)
{
 struct secashead *p;
 int i;

 LCK_MTX_ASSERT(sadb_mutex, LCK_MTX_ASSERT_OWNED);

 p = (struct secashead *)_MALLOC(sizeof(*p), M_SECA, M_NOWAIT | M_ZERO);
 if (!p) {
  lck_mtx_unlock(sadb_mutex);
  p = (struct secashead *)_MALLOC(sizeof(*p), M_SECA,
      M_WAITOK | M_ZERO);
  lck_mtx_lock(sadb_mutex);
 }
 if (!p)
  return p;
 for (i = 0; i < sizeof(p->savtree)/sizeof(p->savtree[0]); i++)
  LIST_INIT(&p->savtree[i]);
 return p;
}
