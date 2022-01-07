
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_8__ {int nType; int i64Key; float dKey; char* pz; void* nLen; } ;
typedef TYPE_1__ tVariant ;
typedef int int8_t ;
typedef int int64_t ;
typedef void* int32_t ;
typedef int int16_t ;
struct TYPE_11__ {scalar_t__ numParams; TYPE_1__* params; } ;
struct TYPE_10__ {TYPE_4__ normal; } ;
struct TYPE_9__ {int buffer_type; size_t* length; scalar_t__ buffer; scalar_t__* is_null; } ;
typedef TYPE_2__ TAOS_BIND ;
typedef TYPE_3__ STscStmt ;
typedef TYPE_4__ SNormalStmt ;


 int TSDB_CODE_CLI_OUT_OF_MEMORY ;
 int TSDB_CODE_INVALID_VALUE ;
 int TSDB_CODE_SUCCESS ;
 scalar_t__ malloc (int ) ;
 int memcpy (char*,scalar_t__,size_t) ;
 int tVariantDestroy (TYPE_1__*) ;
 int tscTrace (char*,scalar_t__) ;

__attribute__((used)) static int normalStmtBindParam(STscStmt* stmt, TAOS_BIND* bind) {
  SNormalStmt* normal = &stmt->normal;

  for (uint16_t i = 0; i < normal->numParams; ++i) {
    TAOS_BIND* tb = bind + i;
    tVariant* var = normal->params + i;
    tVariantDestroy(var);

    var->nLen = 0;
    if (tb->is_null != ((void*)0) && *(tb->is_null)) {
      var->nType = 131;
      var->i64Key = 0;
      continue;
    }

    var->nType = tb->buffer_type;
    switch (tb->buffer_type) {
      case 131:
        var->i64Key = 0;
        break;

      case 136:
        var->i64Key = (*(int8_t*)tb->buffer) ? 1 : 0;
        break;

      case 128:
        var->i64Key = *(int8_t*)tb->buffer;
        break;

      case 130:
        var->i64Key = *(int16_t*)tb->buffer;
        break;

      case 133:
        var->i64Key = *(int32_t*)tb->buffer;
        break;

      case 138:
      case 129:
        var->i64Key = *(int64_t*)tb->buffer;
        break;

      case 134:
        var->dKey = *(float*)tb->buffer;
        break;

      case 135:
        var->dKey = *(double*)tb->buffer;
        break;

      case 137:
      case 132:
        var->pz = (char*)malloc((*tb->length) + 1);
        if (var->pz == ((void*)0)) {
          return TSDB_CODE_CLI_OUT_OF_MEMORY;
        }
        memcpy(var->pz, tb->buffer, (*tb->length));
        var->pz[*tb->length] = 0;
        var->nLen = (int32_t)(*tb->length);
        break;

      default:
        tscTrace("param %d: type mismatch or invalid", i);
        return TSDB_CODE_INVALID_VALUE;
    }
  }

  return TSDB_CODE_SUCCESS;
}
