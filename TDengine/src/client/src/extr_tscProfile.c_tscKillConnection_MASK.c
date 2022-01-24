#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {struct TYPE_10__* next; int /*<<< orphan*/  thandle; } ;
struct TYPE_9__ {struct TYPE_9__* next; } ;
struct TYPE_8__ {int /*<<< orphan*/  mutex; TYPE_2__* streamList; TYPE_3__* sqlList; } ;
typedef  TYPE_1__ STscObj ;
typedef  TYPE_2__ SSqlStream ;
typedef  TYPE_3__ SSqlObj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_1__*) ; 

void FUNC6(STscObj *pObj) {
  FUNC0(&pObj->mutex);

  SSqlObj *pSql = pObj->sqlList;
  while (pSql) {
    FUNC2(pSql->thandle);
    pSql = pSql->next;
  }

  SSqlStream *pStream = pObj->streamList;
  while (pStream) {
    FUNC4(pStream);
    pStream = pStream->next;
  }

  FUNC1(&pObj->mutex);

  FUNC3(pObj);

  FUNC5("connection:%p is killed", pObj);
}