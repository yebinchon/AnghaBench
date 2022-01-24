#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_6__ {char const* name; int mseconds; scalar_t__ lastKey; int numOfFields; int /*<<< orphan*/  result; int /*<<< orphan*/  fields; int /*<<< orphan*/ * taos; struct TYPE_6__* signature; } ;
typedef  TYPE_1__ TAOS_SUB ;
typedef  int /*<<< orphan*/  TAOS_FIELD ;
typedef  TYPE_1__ SSub ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char const*,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ) ; 

TAOS_SUB *FUNC17(const char *host, const char *user, const char *pass, const char *db, const char *name, int64_t time, int mseconds) {
  SSub *pSub;

  pSub = (SSub *)FUNC0(sizeof(SSub));
  if (pSub == NULL) return NULL;
  FUNC2(pSub, 0, sizeof(SSub));

  pSub->signature = pSub;
  FUNC4(pSub->name, name);
  pSub->mseconds = mseconds;
  pSub->lastKey = time;
  if (pSub->lastKey == 0) {
    pSub->lastKey = FUNC5();
  }

  FUNC10();
  pSub->taos = FUNC7(host, user, pass, NULL, 0);
  if (pSub->taos == NULL) {
    FUNC14(pSub);
  } else {
    char qstr[128];
    FUNC3(qstr, "use %s", db);
    int res = FUNC12(pSub->taos, qstr);
    if (res != 0) {
      FUNC15("failed to open DB:%s", db);
      FUNC6(pSub->taos);
      FUNC14(pSub);
    } else {
      FUNC3(qstr, "select * from %s where _c0 > now+1000d", pSub->name);
      if (FUNC12(pSub->taos, qstr)) {
        FUNC16("failed to select, reason:%s", FUNC8(pSub->taos));
        FUNC6(pSub->taos);
        FUNC14(pSub);
        return NULL;
      }
      pSub->result = FUNC13(pSub->taos);
      pSub->numOfFields = FUNC11(pSub->result);
      FUNC1(pSub->fields, FUNC9(pSub->result), sizeof(TAOS_FIELD) * pSub->numOfFields);
    }
  }

  return pSub;
}