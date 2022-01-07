
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ zToken; } ;
struct TYPE_7__ {TYPE_1__ u; } ;
typedef TYPE_2__ Expr ;


 int EP_IntValue ;
 int ExprHasProperty (TYPE_2__*,int ) ;
 int ROUND8 (int) ;
 int dupedExprStructSize (TYPE_2__*,int) ;
 scalar_t__ sqlite3Strlen30 (scalar_t__) ;

__attribute__((used)) static int dupedExprNodeSize(Expr *p, int flags){
  int nByte = dupedExprStructSize(p, flags) & 0xfff;
  if( !ExprHasProperty(p, EP_IntValue) && p->u.zToken ){
    nByte += sqlite3Strlen30(p->u.zToken)+1;
  }
  return ROUND8(nByte);
}
