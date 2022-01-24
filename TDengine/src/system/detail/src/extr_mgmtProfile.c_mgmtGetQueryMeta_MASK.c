#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {void* numOfColumns; } ;
struct TYPE_10__ {void* bytes; int /*<<< orphan*/  name; void* type; } ;
struct TYPE_9__ {int* bytes; int numOfColumns; int* offset; int numOfRows; int rowSize; int /*<<< orphan*/ * pNode; } ;
typedef  TYPE_1__ SShowObj ;
typedef  TYPE_2__ SSchema ;
typedef  TYPE_3__ SMeterMeta ;
typedef  int /*<<< orphan*/  SConnObj ;

/* Variables and functions */
 void* TSDB_DATA_TYPE_BIGINT ; 
 void* TSDB_DATA_TYPE_BINARY ; 
 void* TSDB_DATA_TYPE_TIMESTAMP ; 
 int TSDB_IPv4ADDR_LEN ; 
 int TSDB_SHOW_SQL_LEN ; 
 int TSDB_USER_LEN ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC3 (TYPE_3__*) ; 

int FUNC4(SMeterMeta *pMeta, SShowObj *pShow, SConnObj *pConn) {
  int cols = 0;

  SSchema *pSchema = FUNC3(pMeta);

  pShow->bytes[cols] = TSDB_USER_LEN;
  pSchema[cols].type = TSDB_DATA_TYPE_BINARY;
  FUNC2(pSchema[cols].name, "user");
  pSchema[cols].bytes = FUNC0(pShow->bytes[cols]);
  cols++;

  pShow->bytes[cols] = TSDB_IPv4ADDR_LEN + 14;
  pSchema[cols].type = TSDB_DATA_TYPE_BINARY;
  FUNC2(pSchema[cols].name, "ip:port:id");
  pSchema[cols].bytes = FUNC0(pShow->bytes[cols]);
  cols++;

  pShow->bytes[cols] = 8;
  pSchema[cols].type = TSDB_DATA_TYPE_TIMESTAMP;
  FUNC2(pSchema[cols].name, "created_time");
  pSchema[cols].bytes = FUNC0(pShow->bytes[cols]);
  cols++;

  pShow->bytes[cols] = 8;
  pSchema[cols].type = TSDB_DATA_TYPE_BIGINT;
  FUNC2(pSchema[cols].name, "time(us)");
  pSchema[cols].bytes = FUNC0(pShow->bytes[cols]);
  cols++;

  pShow->bytes[cols] = TSDB_SHOW_SQL_LEN;
  pSchema[cols].type = TSDB_DATA_TYPE_BINARY;
  FUNC2(pSchema[cols].name, "sql");
  pSchema[cols].bytes = FUNC0(pShow->bytes[cols]);
  cols++;

  pMeta->numOfColumns = FUNC0(cols);
  pShow->numOfColumns = cols;

  pShow->offset[0] = 0;
  for (int i = 1; i < cols; ++i) pShow->offset[i] = pShow->offset[i - 1] + pShow->bytes[i - 1];

  pShow->numOfRows = 1000000;
  pShow->pNode = NULL;
  pShow->rowSize = pShow->offset[cols - 1] + pShow->bytes[cols - 1];

  FUNC1(pShow, pConn);
  return 0;
}