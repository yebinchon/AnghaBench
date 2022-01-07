
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct secreplay {size_t wsize; void* bitmap; } ;
typedef void* caddr_t ;


 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int M_NOWAIT ;
 int M_SECA ;
 int M_WAITOK ;
 int M_ZERO ;
 int _FREE (struct secreplay*,int ) ;
 scalar_t__ _MALLOC (size_t,int ,int) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int sadb_mutex ;

struct secreplay *
keydb_newsecreplay(size_t wsize)
{
 struct secreplay *p;

 LCK_MTX_ASSERT(sadb_mutex, LCK_MTX_ASSERT_OWNED);

 p = (struct secreplay *)_MALLOC(sizeof(*p), M_SECA, M_NOWAIT | M_ZERO);
 if (!p) {
  lck_mtx_unlock(sadb_mutex);
  p = (struct secreplay *)_MALLOC(sizeof(*p), M_SECA,
      M_WAITOK | M_ZERO);
  lck_mtx_lock(sadb_mutex);
 }
 if (!p)
  return p;

 if (wsize != 0) {
  p->bitmap = (caddr_t)_MALLOC(wsize, M_SECA, M_NOWAIT | M_ZERO);
  if (!p->bitmap) {
   lck_mtx_unlock(sadb_mutex);
   p->bitmap = (caddr_t)_MALLOC(wsize, M_SECA,
       M_WAITOK | M_ZERO);
   lck_mtx_lock(sadb_mutex);
   if (!p->bitmap) {
    _FREE(p, M_SECA);
    return ((void*)0);
   }
  }
 }
 p->wsize = wsize;
 return p;
}
