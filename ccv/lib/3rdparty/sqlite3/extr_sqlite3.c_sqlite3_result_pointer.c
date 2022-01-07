
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* pOut; } ;
typedef TYPE_2__ sqlite3_context ;
struct TYPE_9__ {int flags; TYPE_1__* db; } ;
struct TYPE_7__ {int mutex; } ;
typedef TYPE_3__ Mem ;


 int MEM_Null ;
 int assert (int ) ;
 int sqlite3VdbeMemRelease (TYPE_3__*) ;
 int sqlite3VdbeMemSetPointer (TYPE_3__*,void*,char const*,void (*) (void*)) ;
 int sqlite3_mutex_held (int ) ;

void sqlite3_result_pointer(
  sqlite3_context *pCtx,
  void *pPtr,
  const char *zPType,
  void (*xDestructor)(void*)
){
  Mem *pOut = pCtx->pOut;
  assert( sqlite3_mutex_held(pOut->db->mutex) );
  sqlite3VdbeMemRelease(pOut);
  pOut->flags = MEM_Null;
  sqlite3VdbeMemSetPointer(pOut, pPtr, zPType, xDestructor);
}
