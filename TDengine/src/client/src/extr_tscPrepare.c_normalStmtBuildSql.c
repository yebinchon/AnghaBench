
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_17__ {int nType; char* pz; int nLen; int wpz; int dKey; int i64Key; } ;
typedef TYPE_1__ tVariant ;
struct TYPE_21__ {scalar_t__ numParts; TYPE_1__* params; TYPE_4__* parts; } ;
struct TYPE_20__ {int len; int str; int isParam; } ;
struct TYPE_19__ {int member_0; } ;
struct TYPE_18__ {TYPE_5__ normal; } ;
typedef TYPE_2__ STscStmt ;
typedef TYPE_3__ SStringBuilder ;
typedef TYPE_4__ SNormalStmtPart ;
typedef TYPE_5__ SNormalStmt ;
 int assert (int) ;
 int taosStringBuilderAppend (TYPE_3__*,int ,int ) ;
 int taosStringBuilderAppendChar (TYPE_3__*,char) ;
 int taosStringBuilderAppendDouble (TYPE_3__*,int ) ;
 int taosStringBuilderAppendInteger (TYPE_3__*,int ) ;
 int taosStringBuilderAppendNull (TYPE_3__*) ;
 int taosStringBuilderAppendStringLen (TYPE_3__*,int ,int ) ;
 int taosStringBuilderDestroy (TYPE_3__*) ;
 int taosStringBuilderEnsureCapacity (TYPE_3__*,int) ;
 char* taosStringBuilderGetResult (TYPE_3__*,int *) ;
 scalar_t__ taosStringBuilderSetJmp (TYPE_3__*) ;

__attribute__((used)) static char* normalStmtBuildSql(STscStmt* stmt) {
  SNormalStmt* normal = &stmt->normal;
  SStringBuilder sb = {0};

  if (taosStringBuilderSetJmp(&sb) != 0) {
    taosStringBuilderDestroy(&sb);
    return ((void*)0);
  }

  taosStringBuilderEnsureCapacity(&sb, 4096);
  uint32_t idxParam = 0;

  for(uint16_t i = 0; i < normal->numParts; i++) {
    SNormalStmtPart* part = normal->parts + i;
    if (!part->isParam) {
      taosStringBuilderAppendStringLen(&sb, part->str, part->len);
      continue;
    }

    tVariant* var = normal->params + idxParam++;
    switch (var->nType)
    {
    case 130:
      taosStringBuilderAppendNull(&sb);
      break;

    case 135:
    case 128:
    case 129:
    case 132:
    case 137:
      taosStringBuilderAppendInteger(&sb, var->i64Key);
      break;

    case 133:
    case 134:
      taosStringBuilderAppendDouble(&sb, var->dKey);
      break;

    case 136:
      taosStringBuilderAppendChar(&sb, '\'');
      for (char* p = var->pz; *p != 0; ++p) {
        if (*p == '\'' || *p == '"') {
          taosStringBuilderAppendChar(&sb, '\\');
        }
        taosStringBuilderAppendChar(&sb, *p);
      }
      taosStringBuilderAppendChar(&sb, '\'');
      break;

    case 131:
      taosStringBuilderAppendChar(&sb, '\'');
      taosStringBuilderAppend(&sb, var->wpz, var->nLen);
      taosStringBuilderAppendChar(&sb, '\'');
      break;

    default:
      assert(0);
      break;
    }
  }

  return taosStringBuilderGetResult(&sb, ((void*)0));
}
