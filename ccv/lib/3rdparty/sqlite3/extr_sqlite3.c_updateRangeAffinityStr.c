
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Expr ;


 char SQLITE_AFF_BLOB ;
 char sqlite3CompareAffinity (int *,char) ;
 scalar_t__ sqlite3ExprNeedsNoAffinityChange (int *,char) ;
 int * sqlite3VectorFieldSubexpr (int *,int) ;

__attribute__((used)) static void updateRangeAffinityStr(
  Expr *pRight,
  int n,
  char *zAff
){
  int i;
  for(i=0; i<n; i++){
    Expr *p = sqlite3VectorFieldSubexpr(pRight, i);
    if( sqlite3CompareAffinity(p, zAff[i])==SQLITE_AFF_BLOB
     || sqlite3ExprNeedsNoAffinityChange(p, zAff[i])
    ){
      zAff[i] = SQLITE_AFF_BLOB;
    }
  }
}
