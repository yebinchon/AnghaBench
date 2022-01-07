
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const nSQLOptr; } ;
typedef TYPE_1__ tSQLExpr ;
typedef size_t int32_t ;


 char const TK_IN ;
 char const TK_LIKE ;
 size_t tListLen (char const*) ;

__attribute__((used)) static bool validTableNameOptr(tSQLExpr* pExpr) {
  const char nameFilterOptr[] = {TK_IN, TK_LIKE};

  for (int32_t i = 0; i < tListLen(nameFilterOptr); ++i) {
    if (pExpr->nSQLOptr == nameFilterOptr[i]) {
      return 1;
    }
  }

  return 0;
}
