#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_17__ {int nType; char* pz; int /*<<< orphan*/  nLen; int /*<<< orphan*/  wpz; int /*<<< orphan*/  dKey; int /*<<< orphan*/  i64Key; } ;
typedef  TYPE_1__ tVariant ;
struct TYPE_21__ {scalar_t__ numParts; TYPE_1__* params; TYPE_4__* parts; } ;
struct TYPE_20__ {int /*<<< orphan*/  len; int /*<<< orphan*/  str; int /*<<< orphan*/  isParam; } ;
struct TYPE_19__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_18__ {TYPE_5__ normal; } ;
typedef  TYPE_2__ STscStmt ;
typedef  TYPE_3__ SStringBuilder ;
typedef  TYPE_4__ SNormalStmtPart ;
typedef  TYPE_5__ SNormalStmt ;

/* Variables and functions */
#define  TSDB_DATA_TYPE_BIGINT 137 
#define  TSDB_DATA_TYPE_BINARY 136 
#define  TSDB_DATA_TYPE_BOOL 135 
#define  TSDB_DATA_TYPE_DOUBLE 134 
#define  TSDB_DATA_TYPE_FLOAT 133 
#define  TSDB_DATA_TYPE_INT 132 
#define  TSDB_DATA_TYPE_NCHAR 131 
#define  TSDB_DATA_TYPE_NULL 130 
#define  TSDB_DATA_TYPE_SMALLINT 129 
#define  TSDB_DATA_TYPE_TINYINT 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int) ; 
 char* FUNC9 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_3__*) ; 

__attribute__((used)) static char* FUNC11(STscStmt* stmt) {
  SNormalStmt* normal = &stmt->normal;
  SStringBuilder sb = {0};

  if (FUNC10(&sb) != 0) {
    FUNC7(&sb);
    return NULL;
  }

  FUNC8(&sb, 4096);
  uint32_t idxParam = 0;

  for(uint16_t i = 0; i < normal->numParts; i++) {
    SNormalStmtPart* part = normal->parts + i;
    if (!part->isParam) {
      FUNC6(&sb, part->str, part->len);
      continue;
    }

    tVariant* var = normal->params + idxParam++;
    switch (var->nType)
    {
    case TSDB_DATA_TYPE_NULL:
      FUNC5(&sb);
      break;
    
    case TSDB_DATA_TYPE_BOOL:
    case TSDB_DATA_TYPE_TINYINT:
    case TSDB_DATA_TYPE_SMALLINT:
    case TSDB_DATA_TYPE_INT:
    case TSDB_DATA_TYPE_BIGINT:
      FUNC4(&sb, var->i64Key);
      break;

    case TSDB_DATA_TYPE_FLOAT:
    case TSDB_DATA_TYPE_DOUBLE:
      FUNC3(&sb, var->dKey);
      break;

    case TSDB_DATA_TYPE_BINARY:
      FUNC2(&sb, '\'');
      for (char* p = var->pz; *p != 0; ++p) {
        if (*p == '\'' || *p == '"') {
          FUNC2(&sb, '\\');
        }
        FUNC2(&sb, *p);
      }
      FUNC2(&sb, '\'');
      break;

    case TSDB_DATA_TYPE_NCHAR:
      FUNC2(&sb, '\'');
      FUNC1(&sb, var->wpz, var->nLen);
      FUNC2(&sb, '\'');
      break;

    default:
      FUNC0(false);
      break;
    }
  }

  return FUNC9(&sb, NULL);
}