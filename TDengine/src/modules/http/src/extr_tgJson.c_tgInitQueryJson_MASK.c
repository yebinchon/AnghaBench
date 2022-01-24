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
typedef  int /*<<< orphan*/  HttpContext ;

/* Variables and functions */
 int /*<<< orphan*/  JsonArrStt ; 
 int /*<<< orphan*/  JsonObjStt ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(HttpContext *pContext) {
  JsonBuf *jsonBuf = FUNC4(pContext);
  if (jsonBuf == NULL) return;

  FUNC0(jsonBuf, pContext);
  FUNC5(jsonBuf);

  // array begin
  FUNC1(jsonBuf);
  FUNC3(jsonBuf, JsonObjStt);

  FUNC2(jsonBuf, "metrics", 7);

  FUNC1(jsonBuf);
  FUNC3(jsonBuf, JsonArrStt);
}