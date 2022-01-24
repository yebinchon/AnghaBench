#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  db ;
typedef  int /*<<< orphan*/  SDbObj ;

/* Variables and functions */
 int TSDB_METER_ID_LEN ; 
 int /*<<< orphan*/  TS_PATH_DELIMITER ; 
 int /*<<< orphan*/  dbSdb ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ) ; 

SDbObj *FUNC4(char *meterId) {
  char db[TSDB_METER_ID_LEN], *pos;

  pos = FUNC3(meterId, TS_PATH_DELIMITER);
  pos = FUNC3(pos + 1, TS_PATH_DELIMITER);
  FUNC0(db, 0, sizeof(db));
  FUNC2(db, meterId, pos - meterId);

  return (SDbObj *)FUNC1(dbSdb, db);
}