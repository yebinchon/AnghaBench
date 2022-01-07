
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
typedef int int64_t ;
typedef size_t int32_t ;
typedef int int16_t ;
struct TYPE_5__ {TYPE_1__* param; } ;
struct TYPE_4__ {char* pz; int nType; size_t nLen; } ;
typedef int TSKEY ;
typedef TYPE_2__ SQLFunctionCtx ;


 double GET_DOUBLE_VAL (char*) ;
 double GET_FLOAT_VAL (char*) ;
 int GET_INT64_VAL (char*) ;
 size_t TSDB_KEYSIZE ;
 size_t TSDB_NCHAR_SIZE ;
 int assert (int ) ;
 void* calloc (int,size_t) ;
 char* malloc (size_t) ;
 size_t strlen (char*) ;
 int strncpy (char*,char*,size_t) ;
 size_t wcslen (int const*) ;
 int wcsncpy (int *,int const*,size_t) ;

__attribute__((used)) static void doSetInterpVal(SQLFunctionCtx *pCtx, TSKEY ts, int16_t type, int32_t index, char *data) {
  assert(pCtx->param[index].pz == ((void*)0));

  int32_t len = 0;
  size_t t = 0;

  if (type == 136) {
    t = strlen(data);

    len = t + 1 + TSDB_KEYSIZE;
    pCtx->param[index].pz = calloc(1, len);
  } else if (type == 131) {
    t = wcslen((const wchar_t *)data);

    len = (t + 1) * TSDB_NCHAR_SIZE + TSDB_KEYSIZE;
    pCtx->param[index].pz = calloc(1, len);
  } else {
    len = TSDB_KEYSIZE * 2;
    pCtx->param[index].pz = malloc(len);
  }

  pCtx->param[index].nType = 136;

  char *z = pCtx->param[index].pz;
  *(TSKEY *)z = ts;
  z += TSDB_KEYSIZE;

  switch (type) {
    case 133:
      *(double *)z = GET_FLOAT_VAL(data);
      break;
    case 134:
      *(double *)z = GET_DOUBLE_VAL(data);
      break;
    case 132:
    case 135:
    case 137:
    case 128:
    case 130:
    case 129:
      *(int64_t *)z = GET_INT64_VAL(data);
      break;
    case 136:
      strncpy(z, data, t);
      break;
    case 131: {
      wcsncpy((wchar_t *)z, (const wchar_t *)data, t);
    } break;
    default:
      assert(0);
  }

  pCtx->param[index].nLen = len;
}
