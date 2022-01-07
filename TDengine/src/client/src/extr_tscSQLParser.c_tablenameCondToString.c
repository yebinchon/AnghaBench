
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pz; } ;
struct TYPE_5__ {TYPE_1__ val; } ;
typedef TYPE_2__ tSQLExpr ;
typedef int int32_t ;


 int QUERY_COND_REL_PREFIX_LIKE ;
 int TSDB_CODE_SUCCESS ;
 int strcpy (char*,int ) ;
 int strlen (int ) ;

__attribute__((used)) static int32_t tablenameCondToString(tSQLExpr* pExpr, char* str) {
  strcpy(str, QUERY_COND_REL_PREFIX_LIKE);
  str += strlen(QUERY_COND_REL_PREFIX_LIKE);

  strcpy(str, pExpr->val.pz);

  return TSDB_CODE_SUCCESS;
}
