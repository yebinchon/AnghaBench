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
 int /*<<< orphan*/  JsonArrStt ; 
 int /*<<< orphan*/  JsonObjStt ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*) ; 

void FUNC5(JsonBuf *jsonBuf, char *refId, char *target) {
  if (FUNC4(target) == 0) {
    target = refId;
  }

  // object begin
  FUNC0(jsonBuf);
  FUNC3(jsonBuf, JsonObjStt);

  // target section
  FUNC1(jsonBuf, "refId", 5, refId, (int)FUNC4(refId));
  FUNC1(jsonBuf, "target", 6, target, (int)FUNC4(target));

  // data begin
  FUNC2(jsonBuf, "datapoints", 10);

  // data array begin
  FUNC3(jsonBuf, JsonArrStt);
}