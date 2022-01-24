#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  size_t int32_t ;
typedef  int int16_t ;
struct TYPE_5__ {TYPE_1__* param; } ;
struct TYPE_4__ {char* pz; int nType; size_t nLen; } ;
typedef  int /*<<< orphan*/  TSKEY ;
typedef  TYPE_2__ SQLFunctionCtx ;

/* Variables and functions */
 double FUNC0 (char*) ; 
 double FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
#define  TSDB_DATA_TYPE_BIGINT 137 
#define  TSDB_DATA_TYPE_BINARY 136 
#define  TSDB_DATA_TYPE_BOOL 135 
#define  TSDB_DATA_TYPE_DOUBLE 134 
#define  TSDB_DATA_TYPE_FLOAT 133 
#define  TSDB_DATA_TYPE_INT 132 
#define  TSDB_DATA_TYPE_NCHAR 131 
#define  TSDB_DATA_TYPE_SMALLINT 130 
#define  TSDB_DATA_TYPE_TIMESTAMP 129 
#define  TSDB_DATA_TYPE_TINYINT 128 
 size_t TSDB_KEYSIZE ; 
 size_t TSDB_NCHAR_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int,size_t) ; 
 char* FUNC5 (size_t) ; 
 size_t FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,size_t) ; 
 size_t FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static void FUNC10(SQLFunctionCtx *pCtx, TSKEY ts, int16_t type, int32_t index, char *data) {
  FUNC3(pCtx->param[index].pz == NULL);

  int32_t len = 0;
  size_t  t = 0;

  if (type == TSDB_DATA_TYPE_BINARY) {
    t = FUNC6(data);

    len = t + 1 + TSDB_KEYSIZE;
    pCtx->param[index].pz = FUNC4(1, len);
  } else if (type == TSDB_DATA_TYPE_NCHAR) {
    t = FUNC8((const wchar_t *)data);

    len = (t + 1) * TSDB_NCHAR_SIZE + TSDB_KEYSIZE;
    pCtx->param[index].pz = FUNC4(1, len);
  } else {
    len = TSDB_KEYSIZE * 2;
    pCtx->param[index].pz = FUNC5(len);
  }

  pCtx->param[index].nType = TSDB_DATA_TYPE_BINARY;

  char *z = pCtx->param[index].pz;
  *(TSKEY *)z = ts;
  z += TSDB_KEYSIZE;

  switch (type) {
    case TSDB_DATA_TYPE_FLOAT:
      *(double *)z = FUNC1(data);
      break;
    case TSDB_DATA_TYPE_DOUBLE:
      *(double *)z = FUNC0(data);
      break;
    case TSDB_DATA_TYPE_INT:
    case TSDB_DATA_TYPE_BOOL:
    case TSDB_DATA_TYPE_BIGINT:
    case TSDB_DATA_TYPE_TINYINT:
    case TSDB_DATA_TYPE_SMALLINT:
    case TSDB_DATA_TYPE_TIMESTAMP:
      *(int64_t *)z = FUNC2(data);
      break;
    case TSDB_DATA_TYPE_BINARY:
      FUNC7(z, data, t);
      break;
    case TSDB_DATA_TYPE_NCHAR: {
      FUNC9((wchar_t *)z, (const wchar_t *)data, t);
    } break;
    default:
      FUNC3(0);
  }

  pCtx->param[index].nLen = len;
}