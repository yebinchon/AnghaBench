
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ pnBytesFreed; } ;
typedef TYPE_1__ sqlite3 ;
struct TYPE_9__ {scalar_t__ db; int flags; scalar_t__ szMalloc; int zMalloc; } ;
typedef TYPE_2__ Mem ;


 int MEM_Agg ;
 int MEM_Dyn ;
 int MEM_Frame ;
 int MEM_RowSet ;
 int MEM_Undefined ;
 int assert (int) ;
 int sqlite3DbFree (TYPE_1__*,int ) ;
 int sqlite3DbFreeNN (TYPE_1__*,int ) ;
 int sqlite3VdbeCheckMemInvariants (TYPE_2__*) ;
 int sqlite3VdbeMemRelease (TYPE_2__*) ;
 int testcase (int) ;

__attribute__((used)) static void releaseMemArray(Mem *p, int N){
  if( p && N ){
    Mem *pEnd = &p[N];
    sqlite3 *db = p->db;
    if( db->pnBytesFreed ){
      do{
        if( p->szMalloc ) sqlite3DbFree(db, p->zMalloc);
      }while( (++p)<pEnd );
      return;
    }
    do{
      assert( (&p[1])==pEnd || p[0].db==p[1].db );
      assert( sqlite3VdbeCheckMemInvariants(p) );
      testcase( p->flags & MEM_Agg );
      testcase( p->flags & MEM_Dyn );
      testcase( p->flags & MEM_Frame );
      testcase( p->flags & MEM_RowSet );
      if( p->flags&(MEM_Agg|MEM_Dyn|MEM_Frame|MEM_RowSet) ){
        sqlite3VdbeMemRelease(p);
      }else if( p->szMalloc ){
        sqlite3DbFreeNN(db, p->zMalloc);
        p->szMalloc = 0;
      }

      p->flags = MEM_Undefined;
    }while( (++p)<pEnd );
  }
}
