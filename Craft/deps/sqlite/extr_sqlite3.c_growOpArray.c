
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VdbeOp ;
struct TYPE_3__ {int nOpAlloc; int * aOp; int db; } ;
typedef TYPE_1__ Vdbe ;
typedef int Op ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int sqlite3DbMallocSize (int ,int *) ;
 int * sqlite3DbRealloc (int ,int *,int) ;

__attribute__((used)) static int growOpArray(Vdbe *p){
  VdbeOp *pNew;
  int nNew = (p->nOpAlloc ? p->nOpAlloc*2 : (int)(1024/sizeof(Op)));
  pNew = sqlite3DbRealloc(p->db, p->aOp, nNew*sizeof(Op));
  if( pNew ){
    p->nOpAlloc = sqlite3DbMallocSize(p->db, pNew)/sizeof(Op);
    p->aOp = pNew;
  }
  return (pNew ? SQLITE_OK : SQLITE_NOMEM);
}
