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
typedef  int /*<<< orphan*/  JsonBuf ;

/* Variables and functions */
 int TSDB_CODE_DB_NOT_SELECTED ; 
 int TSDB_CODE_INVALID_TABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int) ; 
 scalar_t__ FUNC3 (char*) ; 
 char** tsError ; 

void FUNC4(JsonBuf* buf, int code) {
  if (code == 0) {
    FUNC1(buf, "status", 6, "succ", 4);
  } else {
    FUNC1(buf, "status", 6, "error", 5);
    FUNC0(buf);
    FUNC2(buf, "code", 4, code);
    if (code >= 0) {
      FUNC0(buf);
      if (code == TSDB_CODE_DB_NOT_SELECTED) {
        FUNC1(buf, "desc", 4, "failed to create database", 23);
      } else if (code == TSDB_CODE_INVALID_TABLE) {
        FUNC1(buf, "desc", 4, "failed to create table", 22);
      } else
        FUNC1(buf, "desc", 4, tsError[code], (int)FUNC3(tsError[code]));
    }
  }
}