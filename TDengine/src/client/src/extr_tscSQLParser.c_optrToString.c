
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nSQLOptr; } ;
typedef TYPE_1__ tSQLExpr ;
typedef int int32_t ;
typedef int int16_t ;
 int TSDB_CODE_INVALID_SQL ;
 int TSDB_CODE_SUCCESS ;
 int sprintf (char*,char*,char const*) ;

__attribute__((used)) static int32_t optrToString(tSQLExpr* pExpr, char** exprString) {
  const char* le = "<=";
  const char* ge = ">=";
  const char* ne = "<>";
  const char* likeOptr = "LIKE";

  switch (pExpr->nSQLOptr) {
    case 135: {
      *(int16_t*)(*exprString) = *(int16_t*)le;
      *exprString += 1;
      break;
    }
    case 137: {
      *(int16_t*)(*exprString) = *(int16_t*)ge;
      *exprString += 1;
      break;
    }
    case 131: {
      *(int16_t*)(*exprString) = *(int16_t*)ne;
      *exprString += 1;
      break;
    }

    case 133:
      *(*exprString) = '<';
      break;
    case 136:
      *(*exprString) = '>';
      break;
    case 138:
      *(*exprString) = '=';
      break;
    case 130:
      *(*exprString) = '+';
      break;
    case 132:
      *(*exprString) = '-';
      break;
    case 128:
      *(*exprString) = '*';
      break;
    case 139:
      *(*exprString) = '/';
      break;
    case 129:
      *(*exprString) = '%';
      break;
    case 134: {
      int32_t len = sprintf(*exprString, " %s ", likeOptr);
      *exprString += (len - 1);
      break;
    }
    default:
      return TSDB_CODE_INVALID_SQL;
  }

  *exprString += 1;

  return TSDB_CODE_SUCCESS;
}
