#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_3__ {int nType; int /*<<< orphan*/  pz; int /*<<< orphan*/  nLen; int /*<<< orphan*/  dKey; int /*<<< orphan*/  i64Key; } ;
typedef  TYPE_1__ tVariant ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
#define  TSDB_DATA_TYPE_BIGINT 135 
#define  TSDB_DATA_TYPE_BINARY 134 
#define  TSDB_DATA_TYPE_BOOL 133 
#define  TSDB_DATA_TYPE_DOUBLE 132 
#define  TSDB_DATA_TYPE_FLOAT 131 
#define  TSDB_DATA_TYPE_INT 130 
 int TSDB_DATA_TYPE_NULL ; 
#define  TSDB_DATA_TYPE_SMALLINT 129 
#define  TSDB_DATA_TYPE_TINYINT 128 
 int /*<<< orphan*/  TSDB_FALSE ; 
 int /*<<< orphan*/  TSDB_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *,int) ; 

void FUNC6(tVariant *pVar, char *pz, uint32_t len, uint32_t type) {
  switch (type) {
    case TSDB_DATA_TYPE_BOOL: {
      int32_t k = FUNC2(pz, "true", 4);
      if (k == 0) {
        pVar->i64Key = TSDB_TRUE;
      } else {
        FUNC0(FUNC2(pz, "false", 5) == 0);
        pVar->i64Key = TSDB_FALSE;
      }
      break;
    }
    case TSDB_DATA_TYPE_TINYINT:
    case TSDB_DATA_TYPE_SMALLINT:
    case TSDB_DATA_TYPE_BIGINT:
    case TSDB_DATA_TYPE_INT:
      pVar->i64Key = FUNC5(pz, NULL, 10);
      break;
    case TSDB_DATA_TYPE_DOUBLE:
    case TSDB_DATA_TYPE_FLOAT:
      pVar->dKey = FUNC4(pz, NULL);
      break;
    case TSDB_DATA_TYPE_BINARY: {
      pVar->pz = FUNC3(pz, len);
      pVar->nLen = FUNC1(pVar->pz);
      break;
    }

    default: {  // nType == 0 means the null value
      type = TSDB_DATA_TYPE_NULL;
    }
  }

  pVar->nType = type;
}