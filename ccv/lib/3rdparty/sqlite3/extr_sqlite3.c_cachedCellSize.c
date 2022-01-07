
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_4__ {int nCell; scalar_t__* szCell; } ;
typedef TYPE_1__ CellArray ;


 int assert (int) ;
 scalar_t__ computeCellSize (TYPE_1__*,int) ;

__attribute__((used)) static u16 cachedCellSize(CellArray *p, int N){
  assert( N>=0 && N<p->nCell );
  if( p->szCell[N] ) return p->szCell[N];
  return computeCellSize(p, N);
}
