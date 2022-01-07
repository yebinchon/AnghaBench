
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Walker ;
typedef int Expr ;


 int UNUSED_PARAMETER2 (int *,int *) ;
 int WRC_Continue ;

__attribute__((used)) static int exprWalkNoop(Walker *NotUsed, Expr *NotUsed2){
  UNUSED_PARAMETER2(NotUsed, NotUsed2);
  return WRC_Continue;
}
