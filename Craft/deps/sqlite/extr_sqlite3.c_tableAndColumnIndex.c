
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* a; } ;
struct TYPE_4__ {int pTab; } ;
typedef TYPE_2__ SrcList ;


 int assert (int) ;
 int columnIndex (int ,char const*) ;

__attribute__((used)) static int tableAndColumnIndex(
  SrcList *pSrc,
  int N,
  const char *zCol,
  int *piTab,
  int *piCol
){
  int i;
  int iCol;

  assert( (piTab==0)==(piCol==0) );
  for(i=0; i<N; i++){
    iCol = columnIndex(pSrc->a[i].pTab, zCol);
    if( iCol>=0 ){
      if( piTab ){
        *piTab = i;
        *piCol = iCol;
      }
      return 1;
    }
  }
  return 0;
}
