
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* db; } ;
struct TYPE_14__ {TYPE_4__* pFunc; TYPE_6__* pMem; TYPE_2__ s; } ;
typedef TYPE_5__ sqlite3_context ;
struct TYPE_12__ {TYPE_4__* pDef; } ;
struct TYPE_15__ {int flags; scalar_t__ z; TYPE_3__ u; } ;
struct TYPE_13__ {scalar_t__ xStep; } ;
struct TYPE_10__ {int mutex; } ;
typedef TYPE_6__ Mem ;


 int MEM_Agg ;
 int MEM_Null ;
 int assert (int) ;
 int memset (scalar_t__,int ,int) ;
 int sqlite3VdbeMemGrow (TYPE_6__*,int,int ) ;
 int sqlite3VdbeMemReleaseExternal (TYPE_6__*) ;
 int sqlite3_mutex_held (int ) ;
 int testcase (int) ;

void *sqlite3_aggregate_context(sqlite3_context *p, int nByte){
  Mem *pMem;
  assert( p && p->pFunc && p->pFunc->xStep );
  assert( sqlite3_mutex_held(p->s.db->mutex) );
  pMem = p->pMem;
  testcase( nByte<0 );
  if( (pMem->flags & MEM_Agg)==0 ){
    if( nByte<=0 ){
      sqlite3VdbeMemReleaseExternal(pMem);
      pMem->flags = MEM_Null;
      pMem->z = 0;
    }else{
      sqlite3VdbeMemGrow(pMem, nByte, 0);
      pMem->flags = MEM_Agg;
      pMem->u.pDef = p->pFunc;
      if( pMem->z ){
        memset(pMem->z, 0, nByte);
      }
    }
  }
  return (void*)pMem->z;
}
