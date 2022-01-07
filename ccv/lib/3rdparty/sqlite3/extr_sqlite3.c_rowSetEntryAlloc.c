
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct RowSetEntry {int dummy; } ;
struct RowSetChunk {int aEntry; struct RowSetChunk* pNextChunk; } ;
struct TYPE_3__ {scalar_t__ nFresh; int pFresh; struct RowSetChunk* pChunk; int db; } ;
typedef TYPE_1__ RowSet ;


 scalar_t__ ROWSET_ENTRY_PER_CHUNK ;
 int assert (int) ;
 struct RowSetChunk* sqlite3DbMallocRawNN (int ,int) ;

__attribute__((used)) static struct RowSetEntry *rowSetEntryAlloc(RowSet *p){
  assert( p!=0 );
  if( p->nFresh==0 ){


    struct RowSetChunk *pNew;
    pNew = sqlite3DbMallocRawNN(p->db, sizeof(*pNew));
    if( pNew==0 ){
      return 0;
    }
    pNew->pNextChunk = p->pChunk;
    p->pChunk = pNew;
    p->pFresh = pNew->aEntry;
    p->nFresh = ROWSET_ENTRY_PER_CHUNK;
  }
  p->nFresh--;
  return p->pFresh++;
}
